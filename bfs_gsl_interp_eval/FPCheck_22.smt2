(declare-fun x1_ack!145 () (_ BitVec 64))
(declare-fun x0_ack!147 () (_ BitVec 64))
(declare-fun x2_ack!146 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!147) ((_ to_fp 11 53) x1_ack!145)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!145) ((_ to_fp 11 53) x2_ack!146)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!145)
                       ((_ to_fp 11 53) x0_ack!147))
               ((_ to_fp 11 53) x0_ack!147))
       ((_ to_fp 11 53) x1_ack!145)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!145)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!145)
                       ((_ to_fp 11 53) x0_ack!147)))
       ((_ to_fp 11 53) x0_ack!147)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!146)
                       ((_ to_fp 11 53) x1_ack!145))
               ((_ to_fp 11 53) x1_ack!145))
       ((_ to_fp 11 53) x2_ack!146)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!146)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!146)
                       ((_ to_fp 11 53) x1_ack!145)))
       ((_ to_fp 11 53) x1_ack!145)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!145)
                    ((_ to_fp 11 53) x0_ack!147))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!146)
                    ((_ to_fp 11 53) x1_ack!145))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!146)
          ((_ to_fp 11 53) x1_ack!145))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!145)
          ((_ to_fp 11 53) x0_ack!147))))

(check-sat)
(exit)
