(declare-fun x1_ack!169 () (_ BitVec 64))
(declare-fun x0_ack!173 () (_ BitVec 64))
(declare-fun x2_ack!170 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!171 () (_ BitVec 64))
(declare-fun y2_ack!172 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!173) ((_ to_fp 11 53) x1_ack!169)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!169) ((_ to_fp 11 53) x2_ack!170)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!169)
                       ((_ to_fp 11 53) x0_ack!173))
               ((_ to_fp 11 53) x0_ack!173))
       ((_ to_fp 11 53) x1_ack!169)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!169)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!169)
                       ((_ to_fp 11 53) x0_ack!173)))
       ((_ to_fp 11 53) x0_ack!173)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!170)
                       ((_ to_fp 11 53) x1_ack!169))
               ((_ to_fp 11 53) x1_ack!169))
       ((_ to_fp 11 53) x2_ack!170)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!170)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!170)
                       ((_ to_fp 11 53) x1_ack!169)))
       ((_ to_fp 11 53) x1_ack!169)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!169)
                    ((_ to_fp 11 53) x0_ack!173))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!170)
                    ((_ to_fp 11 53) x1_ack!169))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!172)
          ((_ to_fp 11 53) y1_ack!171))
  (fp.div roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x2_ack!170)
                  ((_ to_fp 11 53) x1_ack!169)))))

(check-sat)
(exit)
