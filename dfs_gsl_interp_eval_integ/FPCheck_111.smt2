(declare-fun x1_ack!1213 () (_ BitVec 64))
(declare-fun x0_ack!1217 () (_ BitVec 64))
(declare-fun x2_ack!1214 () (_ BitVec 64))
(declare-fun b_ack!1216 () (_ BitVec 64))
(declare-fun a_ack!1215 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1217) ((_ to_fp 11 53) x1_ack!1213)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1213) ((_ to_fp 11 53) x2_ack!1214)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1213)
                       ((_ to_fp 11 53) x0_ack!1217))
               ((_ to_fp 11 53) x0_ack!1217))
       ((_ to_fp 11 53) x1_ack!1213)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1213)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1213)
                       ((_ to_fp 11 53) x0_ack!1217)))
       ((_ to_fp 11 53) x0_ack!1217)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1214)
                       ((_ to_fp 11 53) x1_ack!1213))
               ((_ to_fp 11 53) x1_ack!1213))
       ((_ to_fp 11 53) x2_ack!1214)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1214)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1214)
                       ((_ to_fp 11 53) x1_ack!1213)))
       ((_ to_fp 11 53) x1_ack!1213)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1213)
                    ((_ to_fp 11 53) x0_ack!1217))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1214)
                    ((_ to_fp 11 53) x1_ack!1213))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1215) ((_ to_fp 11 53) b_ack!1216))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1215) ((_ to_fp 11 53) x0_ack!1217))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1216) ((_ to_fp 11 53) x2_ack!1214))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1215) ((_ to_fp 11 53) b_ack!1216))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1215) ((_ to_fp 11 53) x0_ack!1217))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1215) ((_ to_fp 11 53) x1_ack!1213))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1216) ((_ to_fp 11 53) x0_ack!1217))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1216) ((_ to_fp 11 53) x1_ack!1213)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1213) ((_ to_fp 11 53) b_ack!1216))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1213)
                    ((_ to_fp 11 53) x0_ack!1217))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1215)
                                   ((_ to_fp 11 53) x0_ack!1217))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1215)
                                   ((_ to_fp 11 53) x0_ack!1217)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1213)
                                   ((_ to_fp 11 53) x0_ack!1217))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1213)
                                   ((_ to_fp 11 53) x0_ack!1217))))))
  (FPCHECK_FADD_UNDERFLOW
    a!1
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1215)
                    ((_ to_fp 11 53) x0_ack!1217))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1213)
                    ((_ to_fp 11 53) x0_ack!1217))))))

(check-sat)
(exit)
