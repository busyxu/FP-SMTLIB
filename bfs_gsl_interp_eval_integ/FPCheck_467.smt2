(declare-fun x1_ack!5914 () (_ BitVec 64))
(declare-fun x0_ack!5918 () (_ BitVec 64))
(declare-fun x2_ack!5915 () (_ BitVec 64))
(declare-fun b_ack!5917 () (_ BitVec 64))
(declare-fun a_ack!5916 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5918) ((_ to_fp 11 53) x1_ack!5914)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5914) ((_ to_fp 11 53) x2_ack!5915)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5914)
                       ((_ to_fp 11 53) x0_ack!5918))
               ((_ to_fp 11 53) x0_ack!5918))
       ((_ to_fp 11 53) x1_ack!5914)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5914)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5914)
                       ((_ to_fp 11 53) x0_ack!5918)))
       ((_ to_fp 11 53) x0_ack!5918)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5915)
                       ((_ to_fp 11 53) x1_ack!5914))
               ((_ to_fp 11 53) x1_ack!5914))
       ((_ to_fp 11 53) x2_ack!5915)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5915)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5915)
                       ((_ to_fp 11 53) x1_ack!5914)))
       ((_ to_fp 11 53) x1_ack!5914)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5914)
                    ((_ to_fp 11 53) x0_ack!5918))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5915)
                    ((_ to_fp 11 53) x1_ack!5914))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5916) ((_ to_fp 11 53) b_ack!5917))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5916) ((_ to_fp 11 53) x0_ack!5918))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5917) ((_ to_fp 11 53) x2_ack!5915))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5916) ((_ to_fp 11 53) b_ack!5917))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5916) ((_ to_fp 11 53) x0_ack!5918))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5916) ((_ to_fp 11 53) x1_ack!5914))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5917) ((_ to_fp 11 53) x0_ack!5918))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5917) ((_ to_fp 11 53) x1_ack!5914)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5914) ((_ to_fp 11 53) b_ack!5917))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5914)
                    ((_ to_fp 11 53) x0_ack!5918))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!5914)
          ((_ to_fp 11 53) x0_ack!5918))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!5914)
          ((_ to_fp 11 53) x0_ack!5918))))

(check-sat)
(exit)
