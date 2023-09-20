(declare-fun x1_ack!512 () (_ BitVec 64))
(declare-fun x0_ack!518 () (_ BitVec 64))
(declare-fun x2_ack!513 () (_ BitVec 64))
(declare-fun b_ack!517 () (_ BitVec 64))
(declare-fun a_ack!516 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!514 () (_ BitVec 64))
(declare-fun y1_ack!515 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!518) ((_ to_fp 11 53) x1_ack!512)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!512) ((_ to_fp 11 53) x2_ack!513)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!512)
                       ((_ to_fp 11 53) x0_ack!518))
               ((_ to_fp 11 53) x0_ack!518))
       ((_ to_fp 11 53) x1_ack!512)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!512)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!512)
                       ((_ to_fp 11 53) x0_ack!518)))
       ((_ to_fp 11 53) x0_ack!518)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!513)
                       ((_ to_fp 11 53) x1_ack!512))
               ((_ to_fp 11 53) x1_ack!512))
       ((_ to_fp 11 53) x2_ack!513)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!513)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!513)
                       ((_ to_fp 11 53) x1_ack!512)))
       ((_ to_fp 11 53) x1_ack!512)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!512)
                    ((_ to_fp 11 53) x0_ack!518))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!513)
                    ((_ to_fp 11 53) x1_ack!512))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) a_ack!516) ((_ to_fp 11 53) b_ack!517))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!516) ((_ to_fp 11 53) x0_ack!518))))
(assert (not (fp.gt ((_ to_fp 11 53) b_ack!517) ((_ to_fp 11 53) x2_ack!513))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!516) ((_ to_fp 11 53) b_ack!517))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!516) ((_ to_fp 11 53) x0_ack!518))))
(assert (not (fp.geq ((_ to_fp 11 53) a_ack!516) ((_ to_fp 11 53) x1_ack!512))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!517) ((_ to_fp 11 53) x0_ack!518))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!517) ((_ to_fp 11 53) x1_ack!512)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!512) ((_ to_fp 11 53) b_ack!517))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!512)
                    ((_ to_fp 11 53) x0_ack!518))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!515)
          ((_ to_fp 11 53) y0_ack!514))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!512)
          ((_ to_fp 11 53) x0_ack!518))))

(check-sat)
(exit)
