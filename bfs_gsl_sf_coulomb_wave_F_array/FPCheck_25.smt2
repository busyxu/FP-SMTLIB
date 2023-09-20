(declare-fun d_ack!151 () (_ BitVec 64))
(declare-fun b_ack!150 () (_ BitVec 32))
(declare-fun a_ack!153 () (_ BitVec 64))
(declare-fun c_ack!152 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (fp.eq ((_ to_fp 11 53) d_ack!151) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000000 b_ack!150))
(assert (not (bvsle #x00000001 b_ack!150)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!153) ((_ to_fp 11 53) #x0000000000000000)))
(assert (fp.lt (fp.abs (fp.div roundNearestTiesToEven
                       ((_ to_fp 11 53) c_ack!152)
                       ((_ to_fp 11 53) #x3ff0000000000000)))
       ((_ to_fp 11 53) #x3cb0000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW
  #x0000000000000000
  (fp.mul roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3fe0000000000000)
                  ((_ to_fp 11 53) c_ack!152))
          ((_ to_fp 11 53) #x400921fb54442d18))))

(check-sat)
(exit)
