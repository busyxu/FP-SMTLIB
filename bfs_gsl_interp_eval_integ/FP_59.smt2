(declare-fun x1_ack!3022 () (_ BitVec 64))
(declare-fun x0_ack!3026 () (_ BitVec 64))
(declare-fun x2_ack!3023 () (_ BitVec 64))
(declare-fun b_ack!3025 () (_ BitVec 64))
(declare-fun a_ack!3024 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!3026) ((_ to_fp 11 53) x1_ack!3022)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!3022) ((_ to_fp 11 53) x2_ack!3023)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3022)
                       ((_ to_fp 11 53) x0_ack!3026))
               ((_ to_fp 11 53) x0_ack!3026))
       ((_ to_fp 11 53) x1_ack!3022)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!3022)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!3022)
                       ((_ to_fp 11 53) x0_ack!3026)))
       ((_ to_fp 11 53) x0_ack!3026)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3023)
                       ((_ to_fp 11 53) x1_ack!3022))
               ((_ to_fp 11 53) x1_ack!3022))
       ((_ to_fp 11 53) x2_ack!3023)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!3023)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!3023)
                       ((_ to_fp 11 53) x1_ack!3022)))
       ((_ to_fp 11 53) x1_ack!3022)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!3022)
                    ((_ to_fp 11 53) x0_ack!3026))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3023)
                    ((_ to_fp 11 53) x1_ack!3022))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!3024) ((_ to_fp 11 53) b_ack!3025))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3024) ((_ to_fp 11 53) x0_ack!3026))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!3025) ((_ to_fp 11 53) x2_ack!3023))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!3024) ((_ to_fp 11 53) b_ack!3025))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!3024) ((_ to_fp 11 53) x0_ack!3026))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!3024) ((_ to_fp 11 53) x1_ack!3022)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!3022) ((_ to_fp 11 53) a_ack!3024))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!3025) ((_ to_fp 11 53) x1_ack!3022))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!3025) ((_ to_fp 11 53) x2_ack!3023))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!3023)
                    ((_ to_fp 11 53) x1_ack!3022))
            ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
