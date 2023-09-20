(declare-fun x1_ack!1203 () (_ BitVec 64))
(declare-fun x0_ack!1207 () (_ BitVec 64))
(declare-fun x2_ack!1204 () (_ BitVec 64))
(declare-fun b_ack!1206 () (_ BitVec 64))
(declare-fun a_ack!1205 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1207) ((_ to_fp 11 53) x1_ack!1203)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1203) ((_ to_fp 11 53) x2_ack!1204)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1203)
                       ((_ to_fp 11 53) x0_ack!1207))
               ((_ to_fp 11 53) x0_ack!1207))
       ((_ to_fp 11 53) x1_ack!1203)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1203)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1203)
                       ((_ to_fp 11 53) x0_ack!1207)))
       ((_ to_fp 11 53) x0_ack!1207)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1204)
                       ((_ to_fp 11 53) x1_ack!1203))
               ((_ to_fp 11 53) x1_ack!1203))
       ((_ to_fp 11 53) x2_ack!1204)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1204)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1204)
                       ((_ to_fp 11 53) x1_ack!1203)))
       ((_ to_fp 11 53) x1_ack!1203)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1203)
                    ((_ to_fp 11 53) x0_ack!1207))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1204)
                    ((_ to_fp 11 53) x1_ack!1203))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1205) ((_ to_fp 11 53) b_ack!1206))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1205) ((_ to_fp 11 53) x0_ack!1207))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1206) ((_ to_fp 11 53) x2_ack!1204))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1205) ((_ to_fp 11 53) b_ack!1206))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1205) ((_ to_fp 11 53) x0_ack!1207))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1205) ((_ to_fp 11 53) x1_ack!1203))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1206) ((_ to_fp 11 53) x0_ack!1207))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1206) ((_ to_fp 11 53) x1_ack!1203)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1203) ((_ to_fp 11 53) b_ack!1206))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1203)
                    ((_ to_fp 11 53) x0_ack!1207))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1205)
                                   ((_ to_fp 11 53) x0_ack!1207))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1205)
                                   ((_ to_fp 11 53) x0_ack!1207)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1203)
                                   ((_ to_fp 11 53) x0_ack!1207))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1203)
                                   ((_ to_fp 11 53) x0_ack!1207))))))
  (FPCHECK_FADD_OVERFLOW
    a!1
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1205)
                    ((_ to_fp 11 53) x0_ack!1207))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1203)
                    ((_ to_fp 11 53) x0_ack!1207))))))

(check-sat)
(exit)
