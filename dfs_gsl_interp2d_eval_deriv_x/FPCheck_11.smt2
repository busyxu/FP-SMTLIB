(declare-fun x1_ack!97 () (_ BitVec 64))
(declare-fun x0_ack!101 () (_ BitVec 64))
(declare-fun y0_ack!98 () (_ BitVec 64))
(declare-fun x_ack!99 () (_ BitVec 64))
(declare-fun y_ack!100 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!101) ((_ to_fp 11 53) x1_ack!97))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!98) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!99) ((_ to_fp 11 53) x0_ack!101))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!99) ((_ to_fp 11 53) x1_ack!97))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!100) ((_ to_fp 11 53) y0_ack!98))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!100) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!99) ((_ to_fp 11 53) x0_ack!101))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!99) ((_ to_fp 11 53) x1_ack!97))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!100) ((_ to_fp 11 53) y0_ack!98))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!100) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!97)
                       ((_ to_fp 11 53) x0_ack!101))
               ((_ to_fp 11 53) x0_ack!101))
       ((_ to_fp 11 53) x1_ack!97)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!97)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!97)
                       ((_ to_fp 11 53) x0_ack!101)))
       ((_ to_fp 11 53) x0_ack!101)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!98))
               ((_ to_fp 11 53) y0_ack!98))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!98)))
       ((_ to_fp 11 53) y0_ack!98)))
(assert (FPCHECK_FSUB_UNDERFLOW y_ack!100 y0_ack!98))

(check-sat)
(exit)
