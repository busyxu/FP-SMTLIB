(declare-fun x1_ack!5199 () (_ BitVec 64))
(declare-fun x0_ack!5203 () (_ BitVec 64))
(declare-fun x2_ack!5200 () (_ BitVec 64))
(declare-fun b_ack!5202 () (_ BitVec 64))
(declare-fun a_ack!5201 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5203) ((_ to_fp 11 53) x1_ack!5199)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5199) ((_ to_fp 11 53) x2_ack!5200)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5199)
                       ((_ to_fp 11 53) x0_ack!5203))
               ((_ to_fp 11 53) x0_ack!5203))
       ((_ to_fp 11 53) x1_ack!5199)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5199)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5199)
                       ((_ to_fp 11 53) x0_ack!5203)))
       ((_ to_fp 11 53) x0_ack!5203)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5200)
                       ((_ to_fp 11 53) x1_ack!5199))
               ((_ to_fp 11 53) x1_ack!5199))
       ((_ to_fp 11 53) x2_ack!5200)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5200)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5200)
                       ((_ to_fp 11 53) x1_ack!5199)))
       ((_ to_fp 11 53) x1_ack!5199)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5199)
                    ((_ to_fp 11 53) x0_ack!5203))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5200)
                    ((_ to_fp 11 53) x1_ack!5199))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5201) ((_ to_fp 11 53) b_ack!5202))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5201) ((_ to_fp 11 53) x0_ack!5203))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5202) ((_ to_fp 11 53) x2_ack!5200))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5201) ((_ to_fp 11 53) b_ack!5202))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5201) ((_ to_fp 11 53) x0_ack!5203))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5201) ((_ to_fp 11 53) x1_ack!5199)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5199) ((_ to_fp 11 53) a_ack!5201))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5202) ((_ to_fp 11 53) x1_ack!5199))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5202) ((_ to_fp 11 53) x2_ack!5200)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5200)
                    ((_ to_fp 11 53) x1_ack!5199))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5201)
                       ((_ to_fp 11 53) x1_ack!5199))
               ((_ to_fp 11 53) x1_ack!5199))
       ((_ to_fp 11 53) a_ack!5201)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) a_ack!5201)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!5201)
                       ((_ to_fp 11 53) x1_ack!5199)))
       ((_ to_fp 11 53) x1_ack!5199)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5201)
                                  ((_ to_fp 11 53) x1_ack!5199)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5201)
                                   ((_ to_fp 11 53) x1_ack!5199))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5201)
                                   ((_ to_fp 11 53) x1_ack!5199)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5201)
                           ((_ to_fp 11 53) x1_ack!5199)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5201)
                 ((_ to_fp 11 53) x1_ack!5199)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!5201)
                                  ((_ to_fp 11 53) x1_ack!5199)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5201)
                                   ((_ to_fp 11 53) x1_ack!5199))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!5201)
                                   ((_ to_fp 11 53) x1_ack!5199)))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) a_ack!5201)
                           ((_ to_fp 11 53) x1_ack!5199)))))
  (fp.eq a!1
         (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) a_ack!5201)
                 ((_ to_fp 11 53) x1_ack!5199)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!5202)
          ((_ to_fp 11 53) x1_ack!5199))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!5202)
          ((_ to_fp 11 53) x1_ack!5199))))

(check-sat)
(exit)
