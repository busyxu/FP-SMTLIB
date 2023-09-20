(declare-fun x1_ack!5671 () (_ BitVec 64))
(declare-fun x0_ack!5678 () (_ BitVec 64))
(declare-fun x2_ack!5672 () (_ BitVec 64))
(declare-fun b_ack!5677 () (_ BitVec 64))
(declare-fun a_ack!5676 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!5673 () (_ BitVec 64))
(declare-fun y1_ack!5674 () (_ BitVec 64))
(declare-fun y2_ack!5675 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5678) ((_ to_fp 11 53) x1_ack!5671)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5671) ((_ to_fp 11 53) x2_ack!5672)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5671)
                       ((_ to_fp 11 53) x0_ack!5678))
               ((_ to_fp 11 53) x0_ack!5678))
       ((_ to_fp 11 53) x1_ack!5671)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5671)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5671)
                       ((_ to_fp 11 53) x0_ack!5678)))
       ((_ to_fp 11 53) x0_ack!5678)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5672)
                       ((_ to_fp 11 53) x1_ack!5671))
               ((_ to_fp 11 53) x1_ack!5671))
       ((_ to_fp 11 53) x2_ack!5672)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5672)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5672)
                       ((_ to_fp 11 53) x1_ack!5671)))
       ((_ to_fp 11 53) x1_ack!5671)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5671)
                    ((_ to_fp 11 53) x0_ack!5678))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5672)
                    ((_ to_fp 11 53) x1_ack!5671))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5676) ((_ to_fp 11 53) b_ack!5677))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5676) ((_ to_fp 11 53) x0_ack!5678))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5677) ((_ to_fp 11 53) x2_ack!5672))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5676) ((_ to_fp 11 53) b_ack!5677))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5676) ((_ to_fp 11 53) x0_ack!5678))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5676) ((_ to_fp 11 53) x1_ack!5671)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5671) ((_ to_fp 11 53) a_ack!5676))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5677) ((_ to_fp 11 53) x1_ack!5671))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5677) ((_ to_fp 11 53) x2_ack!5672)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5672)
                    ((_ to_fp 11 53) x1_ack!5671))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5676)
                       ((_ to_fp 11 53) x1_ack!5671))
               ((_ to_fp 11 53) x1_ack!5671))
       ((_ to_fp 11 53) a_ack!5676)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5676)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5676)
                       ((_ to_fp 11 53) x1_ack!5671)))
       ((_ to_fp 11 53) x1_ack!5671)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5676)
                                  ((_ to_fp 11 53) x1_ack!5671)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5676)
                                   ((_ to_fp 11 53) x1_ack!5671))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5676)
                                   ((_ to_fp 11 53) x1_ack!5671)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5676)
                           ((_ to_fp 11 53) x1_ack!5671)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5676)
                 ((_ to_fp 11 53) x1_ack!5671)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5676)
                                  ((_ to_fp 11 53) x1_ack!5671)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5676)
                                   ((_ to_fp 11 53) x1_ack!5671))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5676)
                                   ((_ to_fp 11 53) x1_ack!5671)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5676)
                           ((_ to_fp 11 53) x1_ack!5671)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5676)
                 ((_ to_fp 11 53) x1_ack!5671)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5677)
                                  ((_ to_fp 11 53) x1_ack!5671)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5677)
                                   ((_ to_fp 11 53) x1_ack!5671))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5677)
                                   ((_ to_fp 11 53) x1_ack!5671)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5677)
                           ((_ to_fp 11 53) x1_ack!5671)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5677)
                 ((_ to_fp 11 53) x1_ack!5671)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5677)
                                  ((_ to_fp 11 53) x1_ack!5671)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5677)
                                   ((_ to_fp 11 53) x1_ack!5671))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5677)
                                   ((_ to_fp 11 53) x1_ack!5671)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5677)
                           ((_ to_fp 11 53) x1_ack!5671)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5677)
                 ((_ to_fp 11 53) x1_ack!5671)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5676)
                           ((_ to_fp 11 53) x1_ack!5671))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5676)
                           ((_ to_fp 11 53) x1_ack!5671))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5677)
                           ((_ to_fp 11 53) x1_ack!5671))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5677)
                           ((_ to_fp 11 53) x1_ack!5671)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5676)
                           ((_ to_fp 11 53) x1_ack!5671))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5676)
                           ((_ to_fp 11 53) x1_ack!5671))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5677)
                           ((_ to_fp 11 53) x1_ack!5671))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5677)
                           ((_ to_fp 11 53) x1_ack!5671)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5676)
                                   ((_ to_fp 11 53) x1_ack!5671))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5676)
                                   ((_ to_fp 11 53) x1_ack!5671)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5677)
                                   ((_ to_fp 11 53) x1_ack!5671))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5677)
                                   ((_ to_fp 11 53) x1_ack!5671)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5676)
                           ((_ to_fp 11 53) x1_ack!5671))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5677)
                           ((_ to_fp 11 53) x1_ack!5671)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5676)
                                   ((_ to_fp 11 53) x1_ack!5671))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5676)
                                   ((_ to_fp 11 53) x1_ack!5671)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5677)
                                   ((_ to_fp 11 53) x1_ack!5671))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5677)
                                   ((_ to_fp 11 53) x1_ack!5671)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5676)
                           ((_ to_fp 11 53) x1_ack!5671))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5677)
                           ((_ to_fp 11 53) x1_ack!5671)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5675)
                           ((_ to_fp 11 53) y1_ack!5674))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5672)
                                   ((_ to_fp 11 53) x1_ack!5671)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5674)
                           ((_ to_fp 11 53) y0_ack!5673))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5671)
                                   ((_ to_fp 11 53) x0_ack!5678)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5672)
                                   ((_ to_fp 11 53) x1_ack!5671))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5671)
                                   ((_ to_fp 11 53) x0_ack!5678)))))
      (a!8 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5676)
                                   ((_ to_fp 11 53) x1_ack!5671))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5676)
                                   ((_ to_fp 11 53) x1_ack!5671)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5677)
                                   ((_ to_fp 11 53) x1_ack!5671))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5677)
                                   ((_ to_fp 11 53) x1_ack!5671))))))
(let ((a!4 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.sub roundNearestTiesToEven a!1 a!2))
                   a!3))
      (a!9 (fp.add roundNearestTiesToEven
                   a!8
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5676)
                                   ((_ to_fp 11 53) x1_ack!5671))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5677)
                                   ((_ to_fp 11 53) x1_ack!5671))))))
(let ((a!5 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x2_ack!5672)
                           ((_ to_fp 11 53) x1_ack!5671))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x0000000000000000)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!4)))))
(let ((a!6 (fp.sub roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!5675)
                                   ((_ to_fp 11 53) y1_ack!5674))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5672)
                                   ((_ to_fp 11 53) x1_ack!5671)))
                   (fp.div roundNearestTiesToEven
                           a!5
                           ((_ to_fp 11 53) #x4008000000000000)))))
(let ((a!7 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           a!6)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5676)
                                   ((_ to_fp 11 53) x1_ack!5671))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5677)
                                   ((_ to_fp 11 53) x1_ack!5671))))))
  (FPCHECK_FADD_OVERFLOW
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) y1_ack!5674) a!7)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3fd5555555555555)
                    a!4)
            a!9))))))))

(check-sat)
(exit)
