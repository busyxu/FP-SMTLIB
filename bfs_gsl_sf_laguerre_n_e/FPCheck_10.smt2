(declare-fun a_ack!57 () (_ BitVec 32))
(declare-fun c_ack!56 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!55 () (_ BitVec 64))
(assert (not (bvslt a_ack!57 #x00000000)))
(assert (not (= #x00000000 a_ack!57)))
(assert (not (= #x00000001 a_ack!57)))
(assert (fp.eq ((_ to_fp 11 53) c_ack!56) ((_ to_fp 11 53) #x0000000000000000)))
(assert (bvsle #x00000002 a_ack!57))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!55)
          ((_ to_fp 11 53) #x3ff0000000000000))
  (fp.div roundNearestTiesToEven
          (fp.add roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!55)
                  ((_ to_fp 11 53) #x4000000000000000))
          ((_ to_fp 11 53) #x4000000000000000))))

(check-sat)
(exit)
