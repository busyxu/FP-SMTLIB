(declare-fun x1_ack!5294 () (_ BitVec 64))
(declare-fun x0_ack!5298 () (_ BitVec 64))
(declare-fun x2_ack!5295 () (_ BitVec 64))
(declare-fun b_ack!5297 () (_ BitVec 64))
(declare-fun a_ack!5296 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5298) ((_ to_fp 11 53) x1_ack!5294)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5294) ((_ to_fp 11 53) x2_ack!5295)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5294)
                       ((_ to_fp 11 53) x0_ack!5298))
               ((_ to_fp 11 53) x0_ack!5298))
       ((_ to_fp 11 53) x1_ack!5294)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5294)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5294)
                       ((_ to_fp 11 53) x0_ack!5298)))
       ((_ to_fp 11 53) x0_ack!5298)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5295)
                       ((_ to_fp 11 53) x1_ack!5294))
               ((_ to_fp 11 53) x1_ack!5294))
       ((_ to_fp 11 53) x2_ack!5295)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5295)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5295)
                       ((_ to_fp 11 53) x1_ack!5294)))
       ((_ to_fp 11 53) x1_ack!5294)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5294)
                    ((_ to_fp 11 53) x0_ack!5298))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5295)
                    ((_ to_fp 11 53) x1_ack!5294))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5296) ((_ to_fp 11 53) b_ack!5297))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5296) ((_ to_fp 11 53) x0_ack!5298))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5297) ((_ to_fp 11 53) x2_ack!5295))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5296) ((_ to_fp 11 53) b_ack!5297))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5296) ((_ to_fp 11 53) x0_ack!5298))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5296) ((_ to_fp 11 53) x1_ack!5294)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5294) ((_ to_fp 11 53) a_ack!5296))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5297) ((_ to_fp 11 53) x1_ack!5294))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5297) ((_ to_fp 11 53) x2_ack!5295)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5295)
                    ((_ to_fp 11 53) x1_ack!5294))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5296)
                       ((_ to_fp 11 53) x1_ack!5294))
               ((_ to_fp 11 53) x1_ack!5294))
       ((_ to_fp 11 53) a_ack!5296)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5296)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5296)
                       ((_ to_fp 11 53) x1_ack!5294)))
       ((_ to_fp 11 53) x1_ack!5294)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5296)
                                  ((_ to_fp 11 53) x1_ack!5294)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5296)
                                   ((_ to_fp 11 53) x1_ack!5294))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5296)
                                   ((_ to_fp 11 53) x1_ack!5294)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5296)
                           ((_ to_fp 11 53) x1_ack!5294)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5296)
                 ((_ to_fp 11 53) x1_ack!5294)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5296)
                                  ((_ to_fp 11 53) x1_ack!5294)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5296)
                                   ((_ to_fp 11 53) x1_ack!5294))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5296)
                                   ((_ to_fp 11 53) x1_ack!5294)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5296)
                           ((_ to_fp 11 53) x1_ack!5294)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5296)
                 ((_ to_fp 11 53) x1_ack!5294)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5297)
                                  ((_ to_fp 11 53) x1_ack!5294)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5297)
                                   ((_ to_fp 11 53) x1_ack!5294))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5297)
                                   ((_ to_fp 11 53) x1_ack!5294)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5297)
                           ((_ to_fp 11 53) x1_ack!5294)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5297)
                 ((_ to_fp 11 53) x1_ack!5294)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5297)
                                  ((_ to_fp 11 53) x1_ack!5294)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5297)
                                   ((_ to_fp 11 53) x1_ack!5294))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5297)
                                   ((_ to_fp 11 53) x1_ack!5294)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5297)
                           ((_ to_fp 11 53) x1_ack!5294)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5297)
                 ((_ to_fp 11 53) x1_ack!5294)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5296)
                           ((_ to_fp 11 53) x1_ack!5294))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5296)
                           ((_ to_fp 11 53) x1_ack!5294))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5297)
                           ((_ to_fp 11 53) x1_ack!5294))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5297)
                           ((_ to_fp 11 53) x1_ack!5294)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!1)
         a!2)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5296)
                           ((_ to_fp 11 53) x1_ack!5294))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5296)
                           ((_ to_fp 11 53) x1_ack!5294))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5297)
                           ((_ to_fp 11 53) x1_ack!5294))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5297)
                           ((_ to_fp 11 53) x1_ack!5294)))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 (fp.add roundNearestTiesToEven a!1 a!2)
                 a!2)
         a!1)))

(check-sat)
(exit)
