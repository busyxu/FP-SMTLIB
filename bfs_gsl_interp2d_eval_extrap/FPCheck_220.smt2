(declare-fun x1_ack!2301 () (_ BitVec 64))
(declare-fun x0_ack!2305 () (_ BitVec 64))
(declare-fun y0_ack!2302 () (_ BitVec 64))
(declare-fun x_ack!2303 () (_ BitVec 64))
(declare-fun y_ack!2304 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2305) ((_ to_fp 11 53) x1_ack!2301))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2302) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2303) ((_ to_fp 11 53) x0_ack!2305))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2303) ((_ to_fp 11 53) x1_ack!2301))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!2304) ((_ to_fp 11 53) y0_ack!2302)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2301)
                       ((_ to_fp 11 53) x0_ack!2305))
               ((_ to_fp 11 53) x0_ack!2305))
       ((_ to_fp 11 53) x1_ack!2301)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2301)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2301)
                       ((_ to_fp 11 53) x0_ack!2305)))
       ((_ to_fp 11 53) x0_ack!2305)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2302))
               ((_ to_fp 11 53) y0_ack!2302))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2302)))
       ((_ to_fp 11 53) y0_ack!2302)))
(assert (FPCHECK_FSUB_OVERFLOW x_ack!2303 x0_ack!2305))

(check-sat)
(exit)
