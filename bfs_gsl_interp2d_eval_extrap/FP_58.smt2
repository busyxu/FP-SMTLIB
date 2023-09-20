(declare-fun x1_ack!2296 () (_ BitVec 64))
(declare-fun x0_ack!2300 () (_ BitVec 64))
(declare-fun y0_ack!2297 () (_ BitVec 64))
(declare-fun x_ack!2298 () (_ BitVec 64))
(declare-fun y_ack!2299 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2300) ((_ to_fp 11 53) x1_ack!2296))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2297) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2298) ((_ to_fp 11 53) x0_ack!2300))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2298) ((_ to_fp 11 53) x1_ack!2296))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!2299) ((_ to_fp 11 53) y0_ack!2297)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2296)
                       ((_ to_fp 11 53) x0_ack!2300))
               ((_ to_fp 11 53) x0_ack!2300))
       ((_ to_fp 11 53) x1_ack!2296)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2296)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2296)
                       ((_ to_fp 11 53) x0_ack!2300)))
       ((_ to_fp 11 53) x0_ack!2300)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2297))
               ((_ to_fp 11 53) y0_ack!2297))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2297)))
       ((_ to_fp 11 53) y0_ack!2297)))

(check-sat)
(exit)
