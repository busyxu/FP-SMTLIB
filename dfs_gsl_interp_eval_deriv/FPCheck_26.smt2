(declare-fun x1_ack!172 () (_ BitVec 64))
(declare-fun x0_ack!176 () (_ BitVec 64))
(declare-fun x2_ack!173 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!174 () (_ BitVec 64))
(declare-fun y2_ack!175 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!176) ((_ to_fp 11 53) x1_ack!172)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!172) ((_ to_fp 11 53) x2_ack!173)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!172)
                       ((_ to_fp 11 53) x0_ack!176))
               ((_ to_fp 11 53) x0_ack!176))
       ((_ to_fp 11 53) x1_ack!172)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!172)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!172)
                       ((_ to_fp 11 53) x0_ack!176)))
       ((_ to_fp 11 53) x0_ack!176)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!173)
                       ((_ to_fp 11 53) x1_ack!172))
               ((_ to_fp 11 53) x1_ack!172))
       ((_ to_fp 11 53) x2_ack!173)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!173)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!173)
                       ((_ to_fp 11 53) x1_ack!172)))
       ((_ to_fp 11 53) x1_ack!172)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!172)
                    ((_ to_fp 11 53) x0_ack!176))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!173)
                    ((_ to_fp 11 53) x1_ack!172))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!175)
          ((_ to_fp 11 53) y1_ack!174))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x2_ack!173)
                  ((_ to_fp 11 53) x1_ack!172)))))

(check-sat)
(exit)
