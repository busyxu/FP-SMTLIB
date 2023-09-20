(declare-fun x1_ack!5371 () (_ BitVec 64))
(declare-fun x0_ack!5378 () (_ BitVec 64))
(declare-fun x2_ack!5372 () (_ BitVec 64))
(declare-fun b_ack!5377 () (_ BitVec 64))
(declare-fun a_ack!5376 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!5373 () (_ BitVec 64))
(declare-fun y1_ack!5374 () (_ BitVec 64))
(declare-fun y2_ack!5375 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5378) ((_ to_fp 11 53) x1_ack!5371)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5371) ((_ to_fp 11 53) x2_ack!5372)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5371)
                       ((_ to_fp 11 53) x0_ack!5378))
               ((_ to_fp 11 53) x0_ack!5378))
       ((_ to_fp 11 53) x1_ack!5371)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5371)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5371)
                       ((_ to_fp 11 53) x0_ack!5378)))
       ((_ to_fp 11 53) x0_ack!5378)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5372)
                       ((_ to_fp 11 53) x1_ack!5371))
               ((_ to_fp 11 53) x1_ack!5371))
       ((_ to_fp 11 53) x2_ack!5372)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5372)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5372)
                       ((_ to_fp 11 53) x1_ack!5371)))
       ((_ to_fp 11 53) x1_ack!5371)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5371)
                    ((_ to_fp 11 53) x0_ack!5378))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5372)
                    ((_ to_fp 11 53) x1_ack!5371))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5376) ((_ to_fp 11 53) b_ack!5377))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5376) ((_ to_fp 11 53) x0_ack!5378))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5377) ((_ to_fp 11 53) x2_ack!5372))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5376) ((_ to_fp 11 53) b_ack!5377))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5376) ((_ to_fp 11 53) x0_ack!5378))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5376) ((_ to_fp 11 53) x1_ack!5371)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5371) ((_ to_fp 11 53) a_ack!5376))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5377) ((_ to_fp 11 53) x1_ack!5371))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5377) ((_ to_fp 11 53) x2_ack!5372)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5372)
                    ((_ to_fp 11 53) x1_ack!5371))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5376)
                       ((_ to_fp 11 53) x1_ack!5371))
               ((_ to_fp 11 53) x1_ack!5371))
       ((_ to_fp 11 53) a_ack!5376)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5376)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5376)
                       ((_ to_fp 11 53) x1_ack!5371)))
       ((_ to_fp 11 53) x1_ack!5371)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5376)
                                  ((_ to_fp 11 53) x1_ack!5371)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5376)
                                   ((_ to_fp 11 53) x1_ack!5371))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5376)
                                   ((_ to_fp 11 53) x1_ack!5371)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5376)
                           ((_ to_fp 11 53) x1_ack!5371)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5376)
                 ((_ to_fp 11 53) x1_ack!5371)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5376)
                                  ((_ to_fp 11 53) x1_ack!5371)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5376)
                                   ((_ to_fp 11 53) x1_ack!5371))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5376)
                                   ((_ to_fp 11 53) x1_ack!5371)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5376)
                           ((_ to_fp 11 53) x1_ack!5371)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5376)
                 ((_ to_fp 11 53) x1_ack!5371)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5377)
                                  ((_ to_fp 11 53) x1_ack!5371)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5377)
                                   ((_ to_fp 11 53) x1_ack!5371))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5377)
                                   ((_ to_fp 11 53) x1_ack!5371)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5377)
                           ((_ to_fp 11 53) x1_ack!5371)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5377)
                 ((_ to_fp 11 53) x1_ack!5371)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5377)
                                  ((_ to_fp 11 53) x1_ack!5371)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5377)
                                   ((_ to_fp 11 53) x1_ack!5371))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5377)
                                   ((_ to_fp 11 53) x1_ack!5371)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5377)
                           ((_ to_fp 11 53) x1_ack!5371)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5377)
                 ((_ to_fp 11 53) x1_ack!5371)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5376)
                           ((_ to_fp 11 53) x1_ack!5371))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5376)
                           ((_ to_fp 11 53) x1_ack!5371))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5377)
                           ((_ to_fp 11 53) x1_ack!5371))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5377)
                           ((_ to_fp 11 53) x1_ack!5371)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5376)
                           ((_ to_fp 11 53) x1_ack!5371))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5376)
                           ((_ to_fp 11 53) x1_ack!5371))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5377)
                           ((_ to_fp 11 53) x1_ack!5371))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5377)
                           ((_ to_fp 11 53) x1_ack!5371)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5376)
                                   ((_ to_fp 11 53) x1_ack!5371))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5376)
                                   ((_ to_fp 11 53) x1_ack!5371)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5377)
                                   ((_ to_fp 11 53) x1_ack!5371))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5377)
                                   ((_ to_fp 11 53) x1_ack!5371)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5376)
                           ((_ to_fp 11 53) x1_ack!5371))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5377)
                           ((_ to_fp 11 53) x1_ack!5371)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5376)
                                   ((_ to_fp 11 53) x1_ack!5371))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5376)
                                   ((_ to_fp 11 53) x1_ack!5371)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5377)
                                   ((_ to_fp 11 53) x1_ack!5371))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5377)
                                   ((_ to_fp 11 53) x1_ack!5371)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5376)
                           ((_ to_fp 11 53) x1_ack!5371))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5377)
                           ((_ to_fp 11 53) x1_ack!5371)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!5375)
                           ((_ to_fp 11 53) y1_ack!5374))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5372)
                                   ((_ to_fp 11 53) x1_ack!5371)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!5374)
                           ((_ to_fp 11 53) y0_ack!5373))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5371)
                                   ((_ to_fp 11 53) x0_ack!5378)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!5372)
                                   ((_ to_fp 11 53) x1_ack!5371))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!5371)
                                   ((_ to_fp 11 53) x0_ack!5378)))))
      (a!5 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5376)
                                   ((_ to_fp 11 53) x1_ack!5371))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5376)
                                   ((_ to_fp 11 53) x1_ack!5371)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5377)
                                   ((_ to_fp 11 53) x1_ack!5371))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5377)
                                   ((_ to_fp 11 53) x1_ack!5371))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fd5555555555555)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3)))
      (a!6 (fp.add roundNearestTiesToEven
                   a!5
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5376)
                                   ((_ to_fp 11 53) x1_ack!5371))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5377)
                                   ((_ to_fp 11 53) x1_ack!5371))))))
  (FPCHECK_FMUL_ACCURACY a!4 a!6))))

(check-sat)
(exit)
