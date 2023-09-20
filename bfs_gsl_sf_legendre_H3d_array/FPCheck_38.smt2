(declare-fun c_ack!235 () (_ BitVec 64))
(declare-fun a_ack!236 () (_ BitVec 32))
(declare-fun b_ack!234 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!235) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!236 #x00000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!235) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (= #x00000000 a_ack!236))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!235) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!235) ((_ to_fp 11 53) #x40862e42fefa39ef))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!235) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!235) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!234) ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  #x3cc0000000000000
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!234)
                  ((_ to_fp 11 53) c_ack!235)))))

(check-sat)
(exit)
