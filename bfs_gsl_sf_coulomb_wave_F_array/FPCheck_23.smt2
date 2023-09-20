(declare-fun d_ack!131 () (_ BitVec 64))
(declare-fun b_ack!130 () (_ BitVec 32))
(declare-fun a_ack!133 () (_ BitVec 64))
(declare-fun c_ack!132 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!131) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000000 b_ack!130))
(assert (not (bvsle #x00000001 b_ack!130)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!133) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!132)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          ((_ to_fp 11 53) c_ack!132))
  #x400921fb54442d18))

(check-sat)
(exit)
