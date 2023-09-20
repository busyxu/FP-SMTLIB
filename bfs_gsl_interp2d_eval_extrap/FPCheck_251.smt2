(declare-fun x1_ack!2606 () (_ BitVec 64))
(declare-fun x0_ack!2610 () (_ BitVec 64))
(declare-fun y0_ack!2607 () (_ BitVec 64))
(declare-fun x_ack!2608 () (_ BitVec 64))
(declare-fun y_ack!2609 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2610) ((_ to_fp 11 53) x1_ack!2606))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2607) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2608) ((_ to_fp 11 53) x0_ack!2610))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2608) ((_ to_fp 11 53) x1_ack!2606))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2609) ((_ to_fp 11 53) y0_ack!2607))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2609) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2606)
                       ((_ to_fp 11 53) x0_ack!2610))
               ((_ to_fp 11 53) x0_ack!2610))
       ((_ to_fp 11 53) x1_ack!2606)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2606)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2606)
                       ((_ to_fp 11 53) x0_ack!2610)))
       ((_ to_fp 11 53) x0_ack!2610)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2607))
               ((_ to_fp 11 53) y0_ack!2607))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2607)))
       ((_ to_fp 11 53) y0_ack!2607)))
(assert (FPCHECK_FSUB_UNDERFLOW y_ack!2609 y0_ack!2607))

(check-sat)
(exit)
