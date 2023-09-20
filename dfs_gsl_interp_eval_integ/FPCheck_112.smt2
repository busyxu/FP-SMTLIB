(declare-fun x1_ack!1223 () (_ BitVec 64))
(declare-fun x0_ack!1227 () (_ BitVec 64))
(declare-fun x2_ack!1224 () (_ BitVec 64))
(declare-fun b_ack!1226 () (_ BitVec 64))
(declare-fun a_ack!1225 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1227) ((_ to_fp 11 53) x1_ack!1223)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1223) ((_ to_fp 11 53) x2_ack!1224)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1223)
                       ((_ to_fp 11 53) x0_ack!1227))
               ((_ to_fp 11 53) x0_ack!1227))
       ((_ to_fp 11 53) x1_ack!1223)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1223)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1223)
                       ((_ to_fp 11 53) x0_ack!1227)))
       ((_ to_fp 11 53) x0_ack!1227)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1224)
                       ((_ to_fp 11 53) x1_ack!1223))
               ((_ to_fp 11 53) x1_ack!1223))
       ((_ to_fp 11 53) x2_ack!1224)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1224)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1224)
                       ((_ to_fp 11 53) x1_ack!1223)))
       ((_ to_fp 11 53) x1_ack!1223)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1223)
                    ((_ to_fp 11 53) x0_ack!1227))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1224)
                    ((_ to_fp 11 53) x1_ack!1223))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!1225) ((_ to_fp 11 53) b_ack!1226))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1225) ((_ to_fp 11 53) x0_ack!1227))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!1226) ((_ to_fp 11 53) x2_ack!1224))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!1225) ((_ to_fp 11 53) b_ack!1226))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!1225) ((_ to_fp 11 53) x0_ack!1227))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!1225) ((_ to_fp 11 53) x1_ack!1223))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!1226) ((_ to_fp 11 53) x0_ack!1227))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!1226) ((_ to_fp 11 53) x1_ack!1223)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1223) ((_ to_fp 11 53) b_ack!1226))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1223)
                    ((_ to_fp 11 53) x0_ack!1227))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1225)
                                   ((_ to_fp 11 53) x0_ack!1227))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!1225)
                                   ((_ to_fp 11 53) x0_ack!1227)))
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1223)
                                   ((_ to_fp 11 53) x0_ack!1227))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1223)
                                   ((_ to_fp 11 53) x0_ack!1227))))))
  (FPCHECK_FADD_ACCURACY
    a!1
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!1225)
                    ((_ to_fp 11 53) x0_ack!1227))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1223)
                    ((_ to_fp 11 53) x0_ack!1227))))))

(check-sat)
(exit)
