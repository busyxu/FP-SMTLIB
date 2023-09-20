(declare-fun a_ack!29 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!28 () (_ BitVec 64))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!29) ((_ to_fp 11 53) #xc000000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!29) ((_ to_fp 11 53) #xc008000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.mul roundNearestTiesToEven
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x8000000000000000)
                  ((_ to_fp 11 53) b_ack!28))
          ((_ to_fp 11 53) b_ack!28))
  #x4018000000000000))

(check-sat)
(exit)
