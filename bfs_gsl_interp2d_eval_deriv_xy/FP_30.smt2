(declare-fun x1_ack!931 () (_ BitVec 64))
(declare-fun x0_ack!935 () (_ BitVec 64))
(declare-fun y0_ack!932 () (_ BitVec 64))
(declare-fun x_ack!933 () (_ BitVec 64))
(declare-fun y_ack!934 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!935) ((_ to_fp 11 53) x1_ack!931))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!932) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!933) ((_ to_fp 11 53) x0_ack!935))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!933) ((_ to_fp 11 53) x1_ack!931))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!934) ((_ to_fp 11 53) y0_ack!932))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!934) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!933) ((_ to_fp 11 53) x0_ack!935))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!933) ((_ to_fp 11 53) x1_ack!931)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!934) ((_ to_fp 11 53) y0_ack!932))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!934) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!931)
                       ((_ to_fp 11 53) x0_ack!935))
               ((_ to_fp 11 53) x0_ack!935))
       ((_ to_fp 11 53) x1_ack!931)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!931)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!931)
                       ((_ to_fp 11 53) x0_ack!935)))
       ((_ to_fp 11 53) x0_ack!935)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!932))
               ((_ to_fp 11 53) y0_ack!932))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!932)))
       ((_ to_fp 11 53) y0_ack!932)))

(check-sat)
(exit)
