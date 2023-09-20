(declare-fun x1_ack!971 () (_ BitVec 64))
(declare-fun x0_ack!977 () (_ BitVec 64))
(declare-fun y0_ack!972 () (_ BitVec 64))
(declare-fun x_ack!975 () (_ BitVec 64))
(declare-fun y_ack!976 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun z3_ack!974 () (_ BitVec 64))
(declare-fun z0_ack!973 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!977) ((_ to_fp 11 53) x1_ack!971))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!972) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!975) ((_ to_fp 11 53) x0_ack!977))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!975) ((_ to_fp 11 53) x1_ack!971))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!976) ((_ to_fp 11 53) y0_ack!972))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!976) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!975) ((_ to_fp 11 53) x0_ack!977))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!975) ((_ to_fp 11 53) x1_ack!971)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!976) ((_ to_fp 11 53) y0_ack!972))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!976) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!971)
                       ((_ to_fp 11 53) x0_ack!977))
               ((_ to_fp 11 53) x0_ack!977))
       ((_ to_fp 11 53) x1_ack!971)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!971)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!971)
                       ((_ to_fp 11 53) x0_ack!977)))
       ((_ to_fp 11 53) x0_ack!977)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!972))
               ((_ to_fp 11 53) y0_ack!972))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!972)))
       ((_ to_fp 11 53) y0_ack!972)))
(assert (FPCHECK_FSUB_OVERFLOW z0_ack!973 z3_ack!974))

(check-sat)
(exit)
