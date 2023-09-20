(declare-fun x1_ack!438 () (_ BitVec 64))
(declare-fun x0_ack!442 () (_ BitVec 64))
(declare-fun x2_ack!439 () (_ BitVec 64))
(declare-fun b_ack!441 () (_ BitVec 64))
(declare-fun a_ack!440 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!442) ((_ to_fp 11 53) x1_ack!438)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!438) ((_ to_fp 11 53) x2_ack!439)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!438)
                       ((_ to_fp 11 53) x0_ack!442))
               ((_ to_fp 11 53) x0_ack!442))
       ((_ to_fp 11 53) x1_ack!438)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!438)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!438)
                       ((_ to_fp 11 53) x0_ack!442)))
       ((_ to_fp 11 53) x0_ack!442)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!439)
                       ((_ to_fp 11 53) x1_ack!438))
               ((_ to_fp 11 53) x1_ack!438))
       ((_ to_fp 11 53) x2_ack!439)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!439)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!439)
                       ((_ to_fp 11 53) x1_ack!438)))
       ((_ to_fp 11 53) x1_ack!438)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!438)
                    ((_ to_fp 11 53) x0_ack!442))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!439)
                    ((_ to_fp 11 53) x1_ack!438))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!440) ((_ to_fp 11 53) b_ack!441))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!440) ((_ to_fp 11 53) x0_ack!442))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!441) ((_ to_fp 11 53) x2_ack!439))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!440) ((_ to_fp 11 53) b_ack!441))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!440) ((_ to_fp 11 53) x0_ack!442))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!440) ((_ to_fp 11 53) x1_ack!438))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!441) ((_ to_fp 11 53) x0_ack!442))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!441) ((_ to_fp 11 53) x1_ack!438)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!438) ((_ to_fp 11 53) b_ack!441))))
(assert (FPCHECK_FSUB_UNDERFLOW x1_ack!438 x0_ack!442))

(check-sat)
(exit)
