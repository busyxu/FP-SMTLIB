(declare-fun x1_ack!2521 () (_ BitVec 64))
(declare-fun x0_ack!2525 () (_ BitVec 64))
(declare-fun y0_ack!2522 () (_ BitVec 64))
(declare-fun x_ack!2523 () (_ BitVec 64))
(declare-fun y_ack!2524 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2525) ((_ to_fp 11 53) x1_ack!2521))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2522) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2523) ((_ to_fp 11 53) x0_ack!2525))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2523) ((_ to_fp 11 53) x1_ack!2521))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2524) ((_ to_fp 11 53) y0_ack!2522))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2524) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2521)
                       ((_ to_fp 11 53) x0_ack!2525))
               ((_ to_fp 11 53) x0_ack!2525))
       ((_ to_fp 11 53) x1_ack!2521)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2521)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2521)
                       ((_ to_fp 11 53) x0_ack!2525)))
       ((_ to_fp 11 53) x0_ack!2525)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2522))
               ((_ to_fp 11 53) y0_ack!2522))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2522)))
       ((_ to_fp 11 53) y0_ack!2522)))
(assert (FPCHECK_FSUB_UNDERFLOW x_ack!2523 x0_ack!2525))

(check-sat)
(exit)
