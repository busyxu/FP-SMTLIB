(declare-fun x1_ack!2366 () (_ BitVec 64))
(declare-fun x0_ack!2370 () (_ BitVec 64))
(declare-fun y0_ack!2367 () (_ BitVec 64))
(declare-fun x_ack!2368 () (_ BitVec 64))
(declare-fun y_ack!2369 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2370) ((_ to_fp 11 53) x1_ack!2366))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2367) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2368) ((_ to_fp 11 53) x0_ack!2370))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2368) ((_ to_fp 11 53) x1_ack!2366))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!2369) ((_ to_fp 11 53) y0_ack!2367)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2366)
                       ((_ to_fp 11 53) x0_ack!2370))
               ((_ to_fp 11 53) x0_ack!2370))
       ((_ to_fp 11 53) x1_ack!2366)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2366)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2366)
                       ((_ to_fp 11 53) x0_ack!2370)))
       ((_ to_fp 11 53) x0_ack!2370)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2367))
               ((_ to_fp 11 53) y0_ack!2367))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2367)))
       ((_ to_fp 11 53) y0_ack!2367)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!2368)
          ((_ to_fp 11 53) x0_ack!2370))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!2366)
          ((_ to_fp 11 53) x0_ack!2370))))

(check-sat)
(exit)
