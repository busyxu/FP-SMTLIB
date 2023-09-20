(declare-fun x1_ack!5939 () (_ BitVec 64))
(declare-fun x0_ack!5943 () (_ BitVec 64))
(declare-fun x2_ack!5940 () (_ BitVec 64))
(declare-fun b_ack!5942 () (_ BitVec 64))
(declare-fun a_ack!5941 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5943) ((_ to_fp 11 53) x1_ack!5939)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5939) ((_ to_fp 11 53) x2_ack!5940)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5939)
                       ((_ to_fp 11 53) x0_ack!5943))
               ((_ to_fp 11 53) x0_ack!5943))
       ((_ to_fp 11 53) x1_ack!5939)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5939)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5939)
                       ((_ to_fp 11 53) x0_ack!5943)))
       ((_ to_fp 11 53) x0_ack!5943)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5940)
                       ((_ to_fp 11 53) x1_ack!5939))
               ((_ to_fp 11 53) x1_ack!5939))
       ((_ to_fp 11 53) x2_ack!5940)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5940)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5940)
                       ((_ to_fp 11 53) x1_ack!5939)))
       ((_ to_fp 11 53) x1_ack!5939)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5939)
                    ((_ to_fp 11 53) x0_ack!5943))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5940)
                    ((_ to_fp 11 53) x1_ack!5939))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5941) ((_ to_fp 11 53) b_ack!5942))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5941) ((_ to_fp 11 53) x0_ack!5943))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5942) ((_ to_fp 11 53) x2_ack!5940))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5941) ((_ to_fp 11 53) b_ack!5942))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5941) ((_ to_fp 11 53) x0_ack!5943))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!5941) ((_ to_fp 11 53) x1_ack!5939))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5942) ((_ to_fp 11 53) x0_ack!5943))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!5942) ((_ to_fp 11 53) x1_ack!5939)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5939) ((_ to_fp 11 53) b_ack!5942))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5939)
                    ((_ to_fp 11 53) x0_ack!5943))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!5941)
                  ((_ to_fp 11 53) x0_ack!5943))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!5941)
                  ((_ to_fp 11 53) x0_ack!5943)))
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!5939)
                  ((_ to_fp 11 53) x0_ack!5943))
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!5939)
                  ((_ to_fp 11 53) x0_ack!5943)))))

(check-sat)
(exit)
