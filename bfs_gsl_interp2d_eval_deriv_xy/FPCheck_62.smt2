(declare-fun x1_ack!681 () (_ BitVec 64))
(declare-fun x0_ack!687 () (_ BitVec 64))
(declare-fun y0_ack!682 () (_ BitVec 64))
(declare-fun x_ack!685 () (_ BitVec 64))
(declare-fun y_ack!686 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun z3_ack!684 () (_ BitVec 64))
(declare-fun z0_ack!683 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!687) ((_ to_fp 11 53) x1_ack!681))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!682) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!685) ((_ to_fp 11 53) x0_ack!687))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!685) ((_ to_fp 11 53) x1_ack!681))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!686) ((_ to_fp 11 53) y0_ack!682))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!686) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!685) ((_ to_fp 11 53) x0_ack!687))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!685) ((_ to_fp 11 53) x1_ack!681))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!686) ((_ to_fp 11 53) y0_ack!682))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!686) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!681)
                       ((_ to_fp 11 53) x0_ack!687))
               ((_ to_fp 11 53) x0_ack!687))
       ((_ to_fp 11 53) x1_ack!681)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!681)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!681)
                       ((_ to_fp 11 53) x0_ack!687)))
       ((_ to_fp 11 53) x0_ack!687)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!682))
               ((_ to_fp 11 53) y0_ack!682))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!682)))
       ((_ to_fp 11 53) y0_ack!682)))
(assert (FPCHECK_FSUB_UNDERFLOW z0_ack!683 z3_ack!684))

(check-sat)
(exit)
