(declare-fun b_ack!159 () (_ BitVec 64))
(declare-fun a_ack!160 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!159) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!160) ((_ to_fp 11 53) #x40762e42fefa39ef)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!160) ((_ to_fp 11 53) #xc076232bdd7abcd2)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!159))
       ((_ to_fp 11 53) #x5fe9999999999999)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!159))
       ((_ to_fp 11 53) #x2003333333333333)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4000000000000000)
          (fp.abs ((_ to_fp 11 53) a_ack!160)))
  #x3cb0000000000000))

(check-sat)
(exit)
