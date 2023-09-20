(declare-fun x1_ack!2165 () (_ BitVec 64))
(declare-fun x0_ack!2169 () (_ BitVec 64))
(declare-fun y0_ack!2166 () (_ BitVec 64))
(declare-fun x_ack!2167 () (_ BitVec 64))
(declare-fun y_ack!2168 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2169) ((_ to_fp 11 53) x1_ack!2165))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2166) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2167) ((_ to_fp 11 53) x0_ack!2169))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2167) ((_ to_fp 11 53) x1_ack!2165)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2168) ((_ to_fp 11 53) y0_ack!2166))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2168) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2165)
                       ((_ to_fp 11 53) x0_ack!2169))
               ((_ to_fp 11 53) x0_ack!2169))
       ((_ to_fp 11 53) x1_ack!2165)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2165)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2165)
                       ((_ to_fp 11 53) x0_ack!2169)))
       ((_ to_fp 11 53) x0_ack!2169)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2168)
                       ((_ to_fp 11 53) y0_ack!2166))
               ((_ to_fp 11 53) y0_ack!2166))
       ((_ to_fp 11 53) y_ack!2168)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2168)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2168)
                       ((_ to_fp 11 53) y0_ack!2166)))
       ((_ to_fp 11 53) y0_ack!2166)))

(check-sat)
(exit)
