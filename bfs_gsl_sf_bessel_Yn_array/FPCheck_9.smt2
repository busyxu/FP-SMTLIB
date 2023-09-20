(declare-fun a_ack!74 () (_ BitVec 32))
(declare-fun b_ack!72 () (_ BitVec 32))
(declare-fun c_ack!73 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!74 #x00000000)))
(assert (not (bvslt b_ack!72 a_ack!74)))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!73) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!74 #x00000000)))
(assert (= #x00000000 a_ack!74))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!73) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!73) ((_ to_fp 11 53) #x4010000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!73) ((_ to_fp 11 53) #x4330000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  #x4040000000000000
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) c_ack!73)
          ((_ to_fp 11 53) c_ack!73))))

(check-sat)
(exit)
