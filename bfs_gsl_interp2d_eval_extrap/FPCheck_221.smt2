(declare-fun x1_ack!2311 () (_ BitVec 64))
(declare-fun x0_ack!2315 () (_ BitVec 64))
(declare-fun y0_ack!2312 () (_ BitVec 64))
(declare-fun x_ack!2313 () (_ BitVec 64))
(declare-fun y_ack!2314 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2315) ((_ to_fp 11 53) x1_ack!2311))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2312) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2313) ((_ to_fp 11 53) x0_ack!2315))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2313) ((_ to_fp 11 53) x1_ack!2311))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!2314) ((_ to_fp 11 53) y0_ack!2312)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2311)
                       ((_ to_fp 11 53) x0_ack!2315))
               ((_ to_fp 11 53) x0_ack!2315))
       ((_ to_fp 11 53) x1_ack!2311)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2311)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2311)
                       ((_ to_fp 11 53) x0_ack!2315)))
       ((_ to_fp 11 53) x0_ack!2315)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2312))
               ((_ to_fp 11 53) y0_ack!2312))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2312)))
       ((_ to_fp 11 53) y0_ack!2312)))
(assert (FPCHECK_FSUB_UNDERFLOW x_ack!2313 x0_ack!2315))

(check-sat)
(exit)
