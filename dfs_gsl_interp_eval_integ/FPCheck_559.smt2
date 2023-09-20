(declare-fun x1_ack!7022 () (_ BitVec 64))
(declare-fun x0_ack!7026 () (_ BitVec 64))
(declare-fun x2_ack!7023 () (_ BitVec 64))
(declare-fun b_ack!7025 () (_ BitVec 64))
(declare-fun a_ack!7024 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!7026) ((_ to_fp 11 53) x1_ack!7022)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!7022) ((_ to_fp 11 53) x2_ack!7023)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7022)
                       ((_ to_fp 11 53) x0_ack!7026))
               ((_ to_fp 11 53) x0_ack!7026))
       ((_ to_fp 11 53) x1_ack!7022)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!7022)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!7022)
                       ((_ to_fp 11 53) x0_ack!7026)))
       ((_ to_fp 11 53) x0_ack!7026)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7023)
                       ((_ to_fp 11 53) x1_ack!7022))
               ((_ to_fp 11 53) x1_ack!7022))
       ((_ to_fp 11 53) x2_ack!7023)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!7023)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!7023)
                       ((_ to_fp 11 53) x1_ack!7022)))
       ((_ to_fp 11 53) x1_ack!7022)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!7022)
                    ((_ to_fp 11 53) x0_ack!7026))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7023)
                    ((_ to_fp 11 53) x1_ack!7022))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!7024) ((_ to_fp 11 53) b_ack!7025))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7024) ((_ to_fp 11 53) x0_ack!7026))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!7025) ((_ to_fp 11 53) x2_ack!7023))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!7024) ((_ to_fp 11 53) b_ack!7025))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!7024) ((_ to_fp 11 53) x0_ack!7026))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!7024) ((_ to_fp 11 53) x1_ack!7022)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!7022) ((_ to_fp 11 53) a_ack!7024))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!7025) ((_ to_fp 11 53) x1_ack!7022))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!7025) ((_ to_fp 11 53) x2_ack!7023))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!7023)
                    ((_ to_fp 11 53) x1_ack!7022))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FSUB_OVERFLOW b_ack!7025 a_ack!7024))

(check-sat)
(exit)
