(declare-fun x1_ack!7852 () (_ BitVec 64))
(declare-fun x0_ack!7856 () (_ BitVec 64))
(declare-fun x2_ack!7853 () (_ BitVec 64))
(declare-fun b_ack!7855 () (_ BitVec 64))
(declare-fun a_ack!7854 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7856) ((_ to_fp 11 53) x1_ack!7852)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7852) ((_ to_fp 11 53) x2_ack!7853)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7852)
                       ((_ to_fp 11 53) x0_ack!7856))
               ((_ to_fp 11 53) x0_ack!7856))
       ((_ to_fp 11 53) x1_ack!7852)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7852)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7852)
                       ((_ to_fp 11 53) x0_ack!7856)))
       ((_ to_fp 11 53) x0_ack!7856)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7853)
                       ((_ to_fp 11 53) x1_ack!7852))
               ((_ to_fp 11 53) x1_ack!7852))
       ((_ to_fp 11 53) x2_ack!7853)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7853)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7853)
                       ((_ to_fp 11 53) x1_ack!7852)))
       ((_ to_fp 11 53) x1_ack!7852)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7852)
                    ((_ to_fp 11 53) x0_ack!7856))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7853)
                    ((_ to_fp 11 53) x1_ack!7852))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7854) ((_ to_fp 11 53) b_ack!7855))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7854) ((_ to_fp 11 53) x0_ack!7856))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7855) ((_ to_fp 11 53) x2_ack!7853))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7854) ((_ to_fp 11 53) b_ack!7855))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7854) ((_ to_fp 11 53) x0_ack!7856))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!7854) ((_ to_fp 11 53) x1_ack!7852))))
(assert (fp.lt ((_ to_fp 11 53) b_ack!7855) ((_ to_fp 11 53) x0_ack!7856)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7852)
                    ((_ to_fp 11 53) x0_ack!7856))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
