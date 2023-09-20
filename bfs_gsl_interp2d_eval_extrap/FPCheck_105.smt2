(declare-fun x1_ack!1107 () (_ BitVec 64))
(declare-fun x0_ack!1111 () (_ BitVec 64))
(declare-fun y0_ack!1108 () (_ BitVec 64))
(declare-fun x_ack!1109 () (_ BitVec 64))
(declare-fun y_ack!1110 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1111) ((_ to_fp 11 53) x1_ack!1107))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1108) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1109) ((_ to_fp 11 53) x0_ack!1111))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1109) ((_ to_fp 11 53) x1_ack!1107)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1110) ((_ to_fp 11 53) y0_ack!1108))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1110) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1107)
                       ((_ to_fp 11 53) x0_ack!1111))
               ((_ to_fp 11 53) x0_ack!1111))
       ((_ to_fp 11 53) x1_ack!1107)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1107)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1107)
                       ((_ to_fp 11 53) x0_ack!1111)))
       ((_ to_fp 11 53) x0_ack!1111)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!1109)
          ((_ to_fp 11 53) x0_ack!1111))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!1107)
          ((_ to_fp 11 53) x0_ack!1111))))

(check-sat)
(exit)
