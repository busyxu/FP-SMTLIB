(declare-fun x1_ack!5249 () (_ BitVec 64))
(declare-fun x0_ack!5253 () (_ BitVec 64))
(declare-fun x2_ack!5250 () (_ BitVec 64))
(declare-fun b_ack!5252 () (_ BitVec 64))
(declare-fun a_ack!5251 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5253) ((_ to_fp 11 53) x1_ack!5249)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5249) ((_ to_fp 11 53) x2_ack!5250)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5249)
                       ((_ to_fp 11 53) x0_ack!5253))
               ((_ to_fp 11 53) x0_ack!5253))
       ((_ to_fp 11 53) x1_ack!5249)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5249)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5249)
                       ((_ to_fp 11 53) x0_ack!5253)))
       ((_ to_fp 11 53) x0_ack!5253)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5250)
                       ((_ to_fp 11 53) x1_ack!5249))
               ((_ to_fp 11 53) x1_ack!5249))
       ((_ to_fp 11 53) x2_ack!5250)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5250)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5250)
                       ((_ to_fp 11 53) x1_ack!5249)))
       ((_ to_fp 11 53) x1_ack!5249)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5249)
                    ((_ to_fp 11 53) x0_ack!5253))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5250)
                    ((_ to_fp 11 53) x1_ack!5249))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5251) ((_ to_fp 11 53) b_ack!5252))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5251) ((_ to_fp 11 53) x0_ack!5253))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5252) ((_ to_fp 11 53) x2_ack!5250))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5251) ((_ to_fp 11 53) b_ack!5252))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5251) ((_ to_fp 11 53) x0_ack!5253))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5251) ((_ to_fp 11 53) x1_ack!5249)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5249) ((_ to_fp 11 53) a_ack!5251))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5252) ((_ to_fp 11 53) x1_ack!5249))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5252) ((_ to_fp 11 53) x2_ack!5250)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5250)
                    ((_ to_fp 11 53) x1_ack!5249))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5251)
                       ((_ to_fp 11 53) x1_ack!5249))
               ((_ to_fp 11 53) x1_ack!5249))
       ((_ to_fp 11 53) a_ack!5251)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5251)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5251)
                       ((_ to_fp 11 53) x1_ack!5249)))
       ((_ to_fp 11 53) x1_ack!5249)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5251)
                                  ((_ to_fp 11 53) x1_ack!5249)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5251)
                                   ((_ to_fp 11 53) x1_ack!5249))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5251)
                                   ((_ to_fp 11 53) x1_ack!5249)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5251)
                           ((_ to_fp 11 53) x1_ack!5249)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5251)
                 ((_ to_fp 11 53) x1_ack!5249)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5251)
                                  ((_ to_fp 11 53) x1_ack!5249)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5251)
                                   ((_ to_fp 11 53) x1_ack!5249))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5251)
                                   ((_ to_fp 11 53) x1_ack!5249)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5251)
                           ((_ to_fp 11 53) x1_ack!5249)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5251)
                 ((_ to_fp 11 53) x1_ack!5249)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5252)
                                  ((_ to_fp 11 53) x1_ack!5249)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5252)
                                   ((_ to_fp 11 53) x1_ack!5249))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5252)
                                   ((_ to_fp 11 53) x1_ack!5249)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5252)
                           ((_ to_fp 11 53) x1_ack!5249)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5252)
                 ((_ to_fp 11 53) x1_ack!5249)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) b_ack!5252)
                                  ((_ to_fp 11 53) x1_ack!5249)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5252)
                                   ((_ to_fp 11 53) x1_ack!5249))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!5252)
                                   ((_ to_fp 11 53) x1_ack!5249)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!5252)
                           ((_ to_fp 11 53) x1_ack!5249)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) b_ack!5252)
                 ((_ to_fp 11 53) x1_ack!5249)))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!5251)
                  ((_ to_fp 11 53) x1_ack!5249))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!5251)
                  ((_ to_fp 11 53) x1_ack!5249)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!5252)
                  ((_ to_fp 11 53) x1_ack!5249))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!5252)
                  ((_ to_fp 11 53) x1_ack!5249)))))

(check-sat)
(exit)
