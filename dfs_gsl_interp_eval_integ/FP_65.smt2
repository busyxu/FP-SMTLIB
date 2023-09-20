(declare-fun x1_ack!3445 () (_ BitVec 64))
(declare-fun x0_ack!3449 () (_ BitVec 64))
(declare-fun x2_ack!3446 () (_ BitVec 64))
(declare-fun b_ack!3448 () (_ BitVec 64))
(declare-fun a_ack!3447 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3449) ((_ to_fp 11 53) x1_ack!3445)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3445) ((_ to_fp 11 53) x2_ack!3446)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3445)
                       ((_ to_fp 11 53) x0_ack!3449))
               ((_ to_fp 11 53) x0_ack!3449))
       ((_ to_fp 11 53) x1_ack!3445)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3445)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3445)
                       ((_ to_fp 11 53) x0_ack!3449)))
       ((_ to_fp 11 53) x0_ack!3449)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3446)
                       ((_ to_fp 11 53) x1_ack!3445))
               ((_ to_fp 11 53) x1_ack!3445))
       ((_ to_fp 11 53) x2_ack!3446)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3446)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3446)
                       ((_ to_fp 11 53) x1_ack!3445)))
       ((_ to_fp 11 53) x1_ack!3445)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3445)
                    ((_ to_fp 11 53) x0_ack!3449))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3446)
                    ((_ to_fp 11 53) x1_ack!3445))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3447) ((_ to_fp 11 53) b_ack!3448))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3447) ((_ to_fp 11 53) x0_ack!3449))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3448) ((_ to_fp 11 53) x2_ack!3446))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3447) ((_ to_fp 11 53) b_ack!3448))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3447) ((_ to_fp 11 53) x0_ack!3449))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!3447) ((_ to_fp 11 53) x1_ack!3445))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3448) ((_ to_fp 11 53) x0_ack!3449))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3448) ((_ to_fp 11 53) x1_ack!3445))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3445)
                    ((_ to_fp 11 53) x0_ack!3449))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
