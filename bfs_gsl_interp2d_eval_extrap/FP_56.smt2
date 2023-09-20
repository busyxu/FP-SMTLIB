(declare-fun x1_ack!2241 () (_ BitVec 64))
(declare-fun x0_ack!2245 () (_ BitVec 64))
(declare-fun y0_ack!2242 () (_ BitVec 64))
(declare-fun x_ack!2243 () (_ BitVec 64))
(declare-fun y_ack!2244 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2245) ((_ to_fp 11 53) x1_ack!2241))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2242) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2243) ((_ to_fp 11 53) x0_ack!2245))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2243) ((_ to_fp 11 53) x1_ack!2241)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2244) ((_ to_fp 11 53) y0_ack!2242))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2244) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2241)
                       ((_ to_fp 11 53) x0_ack!2245))
               ((_ to_fp 11 53) x0_ack!2245))
       ((_ to_fp 11 53) x1_ack!2241)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2241)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2241)
                       ((_ to_fp 11 53) x0_ack!2245)))
       ((_ to_fp 11 53) x0_ack!2245)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2244)
                       ((_ to_fp 11 53) y0_ack!2242))
               ((_ to_fp 11 53) y0_ack!2242))
       ((_ to_fp 11 53) y_ack!2244)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2244)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2244)
                       ((_ to_fp 11 53) y0_ack!2242)))
       ((_ to_fp 11 53) y0_ack!2242)))

(check-sat)
(exit)
