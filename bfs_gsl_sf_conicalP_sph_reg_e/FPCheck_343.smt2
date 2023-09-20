(declare-fun c_ack!1518 () (_ BitVec 64))
(declare-fun a_ack!1519 () (_ BitVec 32))
(declare-fun b_ack!1517 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!1518) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!1519 #xffffffff)))
(assert (not (= #xffffffff a_ack!1519)))
(assert (not (= #x00000000 a_ack!1519)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!1518) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!1518) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!1518) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1519))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1518)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1518)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!3 (not (fp.eq (fp.add roundNearestTiesToEven
                               a!2
                               ((_ to_fp 11 53) #x3ff0000000000000))
                       ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!5 (and a!3
                (fp.eq (fp.add roundNearestTiesToEven
                               a!4
                               ((_ to_fp 11 53) #x0000000000000000))
                       ((_ to_fp 11 53) #x0000000000000000)))))
  (not a!5))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1519)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1519))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1519))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1518)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1517)
                                   ((_ to_fp 11 53) b_ack!1517))
                           (fp.mul roundNearestTiesToEven a!5 a!5))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1518)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.gt (fp.abs (fp.add roundNearestTiesToEven a!4 a!6))
              ((_ to_fp 11 53) #x5fefffffffffffff)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1519)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1519))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1519))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1518)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!6 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!1517)
                                   ((_ to_fp 11 53) b_ack!1517))
                           (fp.mul roundNearestTiesToEven a!5 a!5))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1518)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #x0000000000000000)))))
  (not (fp.gt (fp.abs (fp.add roundNearestTiesToEven a!4 a!6))
              ((_ to_fp 11 53) #x5fefffffffffffff)))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3fe0000000000000)
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1519))
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53)
                                     roundNearestTiesToEven
                                     a_ack!1519)
                                   ((_ to_fp 11 53) #x3fe0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000))))
      (a!6 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!1519))
                   ((_ to_fp 11 53) #x4000000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1518)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x0000000000000000)))
      (a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1518)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   ((_ to_fp 11 53) #x3ff0000000000000)))
      (a!7 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!1517)
                           ((_ to_fp 11 53) b_ack!1517))
                   (fp.mul roundNearestTiesToEven a!6 a!6))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1518)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           a!2
                           ((_ to_fp 11 53) #x3ff0000000000000))))
      (a!8 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!4
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) c_ack!1518)
                                   ((_ to_fp 11 53) #x3ff0000000000000)))
                   (fp.add roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #x0000000000000000)))))
(let ((a!9 (fp.div roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           a!5
                           (fp.mul roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x0000000000000000)))
                   (fp.add roundNearestTiesToEven
                           a!8
                           (fp.mul roundNearestTiesToEven
                                   a!7
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (FPCHECK_FDIV_ZERO
    (fp.div roundNearestTiesToEven
            (fp.add roundNearestTiesToEven
                    a!2
                    ((_ to_fp 11 53) #x3ff0000000000000))
            (fp.add roundNearestTiesToEven
                    a!3
                    ((_ to_fp 11 53) #x0000000000000000)))
    a!9))))))

(check-sat)
(exit)
