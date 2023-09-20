(declare-fun x1_ack!5631 () (_ BitVec 64))
(declare-fun x0_ack!5638 () (_ BitVec 64))
(declare-fun x2_ack!5632 () (_ BitVec 64))
(declare-fun b_ack!5637 () (_ BitVec 64))
(declare-fun a_ack!5636 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!5633 () (_ BitVec 64))
(declare-fun y1_ack!5634 () (_ BitVec 64))
(declare-fun y2_ack!5635 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5638) ((_ to_fp 11 53) x1_ack!5631)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5631) ((_ to_fp 11 53) x2_ack!5632)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5631)
                       ((_ to_fp 11 53) x0_ack!5638))
               ((_ to_fp 11 53) x0_ack!5638))
       ((_ to_fp 11 53) x1_ack!5631)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5631)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5631)
                       ((_ to_fp 11 53) x0_ack!5638)))
       ((_ to_fp 11 53) x0_ack!5638)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5632)
                       ((_ to_fp 11 53) x1_ack!5631))
               ((_ to_fp 11 53) x1_ack!5631))
       ((_ to_fp 11 53) x2_ack!5632)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5632)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5632)
                       ((_ to_fp 11 53) x1_ack!5631)))
       ((_ to_fp 11 53) x1_ack!5631)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5631)
                    ((_ to_fp 11 53) x0_ack!5638))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5632)
                    ((_ to_fp 11 53) x1_ack!5631))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5636) ((_ to_fp 11 53) b_ack!5637))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5636) ((_ to_fp 11 53) x0_ack!5638))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5637) ((_ to_fp 11 53) x2_ack!5632))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5636) ((_ to_fp 11 53) b_ack!5637))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5636) ((_ to_fp 11 53) x0_ack!5638))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5636) ((_ to_fp 11 53) x1_ack!5631)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5631) ((_ to_fp 11 53) a_ack!5636))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5637) ((_ to_fp 11 53) x1_ack!5631))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5637) ((_ to_fp 11 53) x2_ack!5632)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5632)
                    ((_ to_fp 11 53) x1_ack!5631))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5636)
                       ((_ to_fp 11 53) x1_ack!5631))
               ((_ to_fp 11 53) x1_ack!5631))
       ((_ to_fp 11 53) a_ack!5636)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5636)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5636)
                       ((_ to_fp 11 53) x1_ack!5631)))
       ((_ to_fp 11 53) x1_ack!5631)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5636)
                                  ((_ to_fp 11 53) x1_ack!5631)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5636)
                                   ((_ to_fp 11 53) x1_ack!5631))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5636)
                                   ((_ to_fp 11 53) x1_ack!5631)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5636)
                           ((_ to_fp 11 53) x1_ack!5631)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5636)
                 ((_ to_fp 11 53) x1_ack!5631)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5636)
                                  ((_ to_fp 11 53) x1_ack!5631)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5636)
                                   ((_ to_fp 11 53) x1_ack!5631))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5636)
                                   ((_ to_fp 11 53) x1_ack!5631)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5636)
                           ((_ to_fp 11 53) x1_ack!5631)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5636)
                 ((_ to_fp 11 53) x1_ack!5631)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5637)
                                  ((_ to_fp 11 53) x1_ack!5631)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5637)
                                   ((_ to_fp 11 53) x1_ack!5631))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5637)
                                   ((_ to_fp 11 53) x1_ack!5631)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5637)
                           ((_ to_fp 11 53) x1_ack!5631)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5637)
                 ((_ to_fp 11 53) x1_ack!5631)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5637)
                                  ((_ to_fp 11 53) x1_ack!5631)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5637)
                                   ((_ to_fp 11 53) x1_ack!5631))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5637)
                                   ((_ to_fp 11 53) x1_ack!5631)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5637)
                           ((_ to_fp 11 53) x1_ack!5631)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5637)
                 ((_ to_fp 11 53) x1_ack!5631)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5636)
                           ((_ to_fp 11 53) x1_ack!5631))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5636)
                           ((_ to_fp 11 53) x1_ack!5631))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5637)
                           ((_ to_fp 11 53) x1_ack!5631))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5637)
                           ((_ to_fp 11 53) x1_ack!5631)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5636)
                           ((_ to_fp 11 53) x1_ack!5631))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5636)
                           ((_ to_fp 11 53) x1_ack!5631))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5637)
                           ((_ to_fp 11 53) x1_ack!5631))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5637)
                           ((_ to_fp 11 53) x1_ack!5631)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5636)
                                   ((_ to_fp 11 53) x1_ack!5631))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5636)
                                   ((_ to_fp 11 53) x1_ack!5631)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5637)
                                   ((_ to_fp 11 53) x1_ack!5631))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5637)
                                   ((_ to_fp 11 53) x1_ack!5631)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5636)
                           ((_ to_fp 11 53) x1_ack!5631))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5637)
                           ((_ to_fp 11 53) x1_ack!5631)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5636)
                                   ((_ to_fp 11 53) x1_ack!5631))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5636)
                                   ((_ to_fp 11 53) x1_ack!5631)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5637)
                                   ((_ to_fp 11 53) x1_ack!5631))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5637)
                                   ((_ to_fp 11 53) x1_ack!5631)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5636)
                           ((_ to_fp 11 53) x1_ack!5631))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5637)
                           ((_ to_fp 11 53) x1_ack!5631)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5635)
                           ((_ to_fp 11 53) y1_ack!5634))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5632)
                                   ((_ to_fp 11 53) x1_ack!5631)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5634)
                           ((_ to_fp 11 53) y0_ack!5633))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5631)
                                   ((_ to_fp 11 53) x0_ack!5638)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5632)
                                   ((_ to_fp 11 53) x1_ack!5631))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5631)
                                   ((_ to_fp 11 53) x0_ack!5638))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
(let ((a!5 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5632)
                                   ((_ to_fp 11 53) x1_ack!5631))
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x0000000000000000)
                                   a!4))
                   ((_ to_fp 11 53) #x4008000000000000))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!5635)
                                   ((_ to_fp 11 53) y1_ack!5634))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5632)
                                   ((_ to_fp 11 53) x1_ack!5631)))
                   a!5)))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5636)
                                   ((_ to_fp 11 53) x1_ack!5631))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5637)
                                   ((_ to_fp 11 53) x1_ack!5631))))))
  (FPCHECK_FADD_OVERFLOW y1_ack!5634 a!7)))))))

(check-sat)
(exit)
