(declare-fun x1_ack!2511 () (_ BitVec 64))
(declare-fun x0_ack!2515 () (_ BitVec 64))
(declare-fun y0_ack!2512 () (_ BitVec 64))
(declare-fun x_ack!2513 () (_ BitVec 64))
(declare-fun y_ack!2514 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2515) ((_ to_fp 11 53) x1_ack!2511))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2512) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2513) ((_ to_fp 11 53) x0_ack!2515))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2513) ((_ to_fp 11 53) x1_ack!2511))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2514) ((_ to_fp 11 53) y0_ack!2512))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2514) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2511)
                       ((_ to_fp 11 53) x0_ack!2515))
               ((_ to_fp 11 53) x0_ack!2515))
       ((_ to_fp 11 53) x1_ack!2511)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2511)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2511)
                       ((_ to_fp 11 53) x0_ack!2515)))
       ((_ to_fp 11 53) x0_ack!2515)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2512))
               ((_ to_fp 11 53) y0_ack!2512))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2512)))
       ((_ to_fp 11 53) y0_ack!2512)))
(assert (FPCHECK_FSUB_OVERFLOW x_ack!2513 x0_ack!2515))

(check-sat)
(exit)
