(declare-fun a_ack!360 () (_ BitVec 64))
(declare-fun b_ack!359 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!360) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!359) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!359) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!360) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!359)
             (fp.mul roundNearestTiesToEven
                     ((_ to_fp 11 53) #x3fe0000000000000)
                     ((_ to_fp 11 53) a_ack!360)))))
(assert (fp.geq ((_ to_fp 11 53) a_ack!360) ((_ to_fp 11 53) #x412e848000000000)))
(assert (fp.lt (fp.mul roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!359)
                       ((_ to_fp 11 53) a_ack!360))
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) b_ack!359)
                       ((_ to_fp 11 53) a_ack!360)))
       ((_ to_fp 11 53) a_ack!360)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!359)
          ((_ to_fp 11 53) a_ack!360))
  a_ack!360))

(check-sat)
(exit)
