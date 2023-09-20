(declare-fun x1_ack!5179 () (_ BitVec 64))
(declare-fun x0_ack!5183 () (_ BitVec 64))
(declare-fun x2_ack!5180 () (_ BitVec 64))
(declare-fun b_ack!5182 () (_ BitVec 64))
(declare-fun a_ack!5181 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5183) ((_ to_fp 11 53) x1_ack!5179)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5179) ((_ to_fp 11 53) x2_ack!5180)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5179)
                       ((_ to_fp 11 53) x0_ack!5183))
               ((_ to_fp 11 53) x0_ack!5183))
       ((_ to_fp 11 53) x1_ack!5179)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5179)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5179)
                       ((_ to_fp 11 53) x0_ack!5183)))
       ((_ to_fp 11 53) x0_ack!5183)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5180)
                       ((_ to_fp 11 53) x1_ack!5179))
               ((_ to_fp 11 53) x1_ack!5179))
       ((_ to_fp 11 53) x2_ack!5180)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5180)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5180)
                       ((_ to_fp 11 53) x1_ack!5179)))
       ((_ to_fp 11 53) x1_ack!5179)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5179)
                    ((_ to_fp 11 53) x0_ack!5183))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5180)
                    ((_ to_fp 11 53) x1_ack!5179))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5181) ((_ to_fp 11 53) b_ack!5182))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5181) ((_ to_fp 11 53) x0_ack!5183))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5182) ((_ to_fp 11 53) x2_ack!5180))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5181) ((_ to_fp 11 53) b_ack!5182))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5181) ((_ to_fp 11 53) x0_ack!5183))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5181) ((_ to_fp 11 53) x1_ack!5179)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5179) ((_ to_fp 11 53) a_ack!5181))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5182) ((_ to_fp 11 53) x1_ack!5179))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5182) ((_ to_fp 11 53) x2_ack!5180)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5180)
                    ((_ to_fp 11 53) x1_ack!5179))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5181)
                       ((_ to_fp 11 53) x1_ack!5179))
               ((_ to_fp 11 53) x1_ack!5179))
       ((_ to_fp 11 53) a_ack!5181)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5181)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5181)
                       ((_ to_fp 11 53) x1_ack!5179)))
       ((_ to_fp 11 53) x1_ack!5179)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5181)
                                  ((_ to_fp 11 53) x1_ack!5179)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5181)
                                   ((_ to_fp 11 53) x1_ack!5179))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5181)
                                   ((_ to_fp 11 53) x1_ack!5179)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5181)
                           ((_ to_fp 11 53) x1_ack!5179)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5181)
                 ((_ to_fp 11 53) x1_ack!5179)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5181)
                                  ((_ to_fp 11 53) x1_ack!5179)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5181)
                                   ((_ to_fp 11 53) x1_ack!5179))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5181)
                                   ((_ to_fp 11 53) x1_ack!5179)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5181)
                           ((_ to_fp 11 53) x1_ack!5179)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5181)
                 ((_ to_fp 11 53) x1_ack!5179)))))

(check-sat)
(exit)
