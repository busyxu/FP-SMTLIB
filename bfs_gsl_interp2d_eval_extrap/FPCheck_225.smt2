(declare-fun x1_ack!2346 () (_ BitVec 64))
(declare-fun x0_ack!2350 () (_ BitVec 64))
(declare-fun y0_ack!2347 () (_ BitVec 64))
(declare-fun x_ack!2348 () (_ BitVec 64))
(declare-fun y_ack!2349 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2350) ((_ to_fp 11 53) x1_ack!2346))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2347) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2348) ((_ to_fp 11 53) x0_ack!2350))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2348) ((_ to_fp 11 53) x1_ack!2346))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!2349) ((_ to_fp 11 53) y0_ack!2347)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2346)
                       ((_ to_fp 11 53) x0_ack!2350))
               ((_ to_fp 11 53) x0_ack!2350))
       ((_ to_fp 11 53) x1_ack!2346)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2346)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2346)
                       ((_ to_fp 11 53) x0_ack!2350)))
       ((_ to_fp 11 53) x0_ack!2350)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2347))
               ((_ to_fp 11 53) y0_ack!2347))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2347)))
       ((_ to_fp 11 53) y0_ack!2347)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!2348)
          ((_ to_fp 11 53) x0_ack!2350))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!2346)
          ((_ to_fp 11 53) x0_ack!2350))))

(check-sat)
(exit)
