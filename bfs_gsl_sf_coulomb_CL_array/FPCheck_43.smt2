(declare-fun a_ack!160 () (_ BitVec 64))
(declare-fun c_ack!159 () (_ BitVec 64))
(declare-fun b_ack!158 () (_ BitVec 32))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!160) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!160))
       ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) c_ack!159))
       ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (bvsle #x00000001 b_ack!158))
(assert (bvsle #x00000002 b_ack!158))
(assert (FPCHECK_FADD_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!160)
                  ((_ to_fp 11 53) #x4000000000000000)))
  #x3ff0000000000000))

(check-sat)
(exit)
