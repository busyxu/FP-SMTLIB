(declare-fun x1_ack!797 () (_ BitVec 64))
(declare-fun x0_ack!801 () (_ BitVec 64))
(declare-fun y0_ack!798 () (_ BitVec 64))
(declare-fun x_ack!799 () (_ BitVec 64))
(declare-fun y_ack!800 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!801) ((_ to_fp 11 53) x1_ack!797))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!798) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!799) ((_ to_fp 11 53) x0_ack!801))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!799) ((_ to_fp 11 53) x1_ack!797))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!800) ((_ to_fp 11 53) y0_ack!798))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!800) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!799) ((_ to_fp 11 53) x0_ack!801))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!799) ((_ to_fp 11 53) x1_ack!797))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!800) ((_ to_fp 11 53) y0_ack!798))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!800) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!797)
                       ((_ to_fp 11 53) x0_ack!801))
               ((_ to_fp 11 53) x0_ack!801))
       ((_ to_fp 11 53) x1_ack!797)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!797)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!797)
                       ((_ to_fp 11 53) x0_ack!801)))
       ((_ to_fp 11 53) x0_ack!801)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!798))
               ((_ to_fp 11 53) y0_ack!798))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!798)))
       ((_ to_fp 11 53) y0_ack!798)))

(check-sat)
(exit)
