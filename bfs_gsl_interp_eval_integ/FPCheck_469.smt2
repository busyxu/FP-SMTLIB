(declare-fun x1_ack!5929 () (_ BitVec 64))
(declare-fun x0_ack!5933 () (_ BitVec 64))
(declare-fun x2_ack!5930 () (_ BitVec 64))
(declare-fun b_ack!5932 () (_ BitVec 64))
(declare-fun a_ack!5931 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5933) ((_ to_fp 11 53) x1_ack!5929)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5929) ((_ to_fp 11 53) x2_ack!5930)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5929)
                       ((_ to_fp 11 53) x0_ack!5933))
               ((_ to_fp 11 53) x0_ack!5933))
       ((_ to_fp 11 53) x1_ack!5929)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5929)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5929)
                       ((_ to_fp 11 53) x0_ack!5933)))
       ((_ to_fp 11 53) x0_ack!5933)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5930)
                       ((_ to_fp 11 53) x1_ack!5929))
               ((_ to_fp 11 53) x1_ack!5929))
       ((_ to_fp 11 53) x2_ack!5930)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5930)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5930)
                       ((_ to_fp 11 53) x1_ack!5929)))
       ((_ to_fp 11 53) x1_ack!5929)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5929)
                    ((_ to_fp 11 53) x0_ack!5933))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5930)
                    ((_ to_fp 11 53) x1_ack!5929))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5931) ((_ to_fp 11 53) b_ack!5932))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5931) ((_ to_fp 11 53) x0_ack!5933))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5932) ((_ to_fp 11 53) x2_ack!5930))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5931) ((_ to_fp 11 53) b_ack!5932))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5931) ((_ to_fp 11 53) x0_ack!5933))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5931) ((_ to_fp 11 53) x1_ack!5929))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5932) ((_ to_fp 11 53) x0_ack!5933))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5932) ((_ to_fp 11 53) x1_ack!5929)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5929) ((_ to_fp 11 53) b_ack!5932))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5929)
                    ((_ to_fp 11 53) x0_ack!5933))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!5931)
                  ((_ to_fp 11 53) x0_ack!5933))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!5931)
                  ((_ to_fp 11 53) x0_ack!5933)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!5929)
                  ((_ to_fp 11 53) x0_ack!5933))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!5929)
                  ((_ to_fp 11 53) x0_ack!5933)))))

(check-sat)
(exit)
