(declare-fun x1_ack!5936 () (_ BitVec 64))
(declare-fun x0_ack!5942 () (_ BitVec 64))
(declare-fun x2_ack!5937 () (_ BitVec 64))
(declare-fun b_ack!5941 () (_ BitVec 64))
(declare-fun a_ack!5940 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!5938 () (_ BitVec 64))
(declare-fun y2_ack!5939 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!5942) ((_ to_fp 11 53) x1_ack!5936)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!5936) ((_ to_fp 11 53) x2_ack!5937)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5936)
                       ((_ to_fp 11 53) x0_ack!5942))
               ((_ to_fp 11 53) x0_ack!5942))
       ((_ to_fp 11 53) x1_ack!5936)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!5936)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!5936)
                       ((_ to_fp 11 53) x0_ack!5942)))
       ((_ to_fp 11 53) x0_ack!5942)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5937)
                       ((_ to_fp 11 53) x1_ack!5936))
               ((_ to_fp 11 53) x1_ack!5936))
       ((_ to_fp 11 53) x2_ack!5937)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!5937)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!5937)
                       ((_ to_fp 11 53) x1_ack!5936)))
       ((_ to_fp 11 53) x1_ack!5936)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!5936)
                    ((_ to_fp 11 53) x0_ack!5942))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5937)
                    ((_ to_fp 11 53) x1_ack!5936))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!5940) ((_ to_fp 11 53) b_ack!5941))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5940) ((_ to_fp 11 53) x0_ack!5942))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!5941) ((_ to_fp 11 53) x2_ack!5937))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!5940) ((_ to_fp 11 53) b_ack!5941))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!5940) ((_ to_fp 11 53) x0_ack!5942))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!5940) ((_ to_fp 11 53) x1_ack!5936)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!5936) ((_ to_fp 11 53) a_ack!5940))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!5941) ((_ to_fp 11 53) x1_ack!5936))))
(assert (not (fp.geq ((_ to_fp 11 53) b_ack!5941) ((_ to_fp 11 53) x2_ack!5937))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!5937)
                    ((_ to_fp 11 53) x1_ack!5936))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!5939)
          ((_ to_fp 11 53) y1_ack!5938))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!5937)
          ((_ to_fp 11 53) x1_ack!5936))))

(check-sat)
(exit)
