(declare-fun b_ack!53 () (_ BitVec 64))
(declare-fun a_ack!54 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!53) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!53) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!54) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) a_ack!54)
                       ((_ to_fp 11 53) b_ack!53)))
       ((_ to_fp 11 53) #x3f20000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!54)
                  ((_ to_fp 11 53) b_ack!53))
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!54)
                  ((_ to_fp 11 53) b_ack!53)))
  #x4018000000000000))

(check-sat)
(exit)
