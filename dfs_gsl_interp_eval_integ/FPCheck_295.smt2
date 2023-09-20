(declare-fun x1_ack!3575 () (_ BitVec 64))
(declare-fun x0_ack!3579 () (_ BitVec 64))
(declare-fun x2_ack!3576 () (_ BitVec 64))
(declare-fun b_ack!3578 () (_ BitVec 64))
(declare-fun a_ack!3577 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3579) ((_ to_fp 11 53) x1_ack!3575)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3575) ((_ to_fp 11 53) x2_ack!3576)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3575)
                       ((_ to_fp 11 53) x0_ack!3579))
               ((_ to_fp 11 53) x0_ack!3579))
       ((_ to_fp 11 53) x1_ack!3575)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3575)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3575)
                       ((_ to_fp 11 53) x0_ack!3579)))
       ((_ to_fp 11 53) x0_ack!3579)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3576)
                       ((_ to_fp 11 53) x1_ack!3575))
               ((_ to_fp 11 53) x1_ack!3575))
       ((_ to_fp 11 53) x2_ack!3576)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3576)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3576)
                       ((_ to_fp 11 53) x1_ack!3575)))
       ((_ to_fp 11 53) x1_ack!3575)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3575)
                    ((_ to_fp 11 53) x0_ack!3579))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3576)
                    ((_ to_fp 11 53) x1_ack!3575))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3577) ((_ to_fp 11 53) b_ack!3578))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3577) ((_ to_fp 11 53) x0_ack!3579))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3578) ((_ to_fp 11 53) x2_ack!3576))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3577) ((_ to_fp 11 53) b_ack!3578))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3577) ((_ to_fp 11 53) x0_ack!3579))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3577) ((_ to_fp 11 53) x1_ack!3575))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3578) ((_ to_fp 11 53) x0_ack!3579))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3578) ((_ to_fp 11 53) x1_ack!3575))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3575)
                    ((_ to_fp 11 53) x0_ack!3579))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_UNDERFLOW b_ack!3578 x0_ack!3579))

(check-sat)
(exit)
