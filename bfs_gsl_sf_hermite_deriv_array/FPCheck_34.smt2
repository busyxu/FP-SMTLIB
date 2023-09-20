(declare-fun b_ack!267 () (_ BitVec 32))
(declare-fun a_ack!269 () (_ BitVec 32))
(declare-fun c_ack!268 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!267 #x00000000)))
(assert (not (bvslt a_ack!269 #x00000000)))
(assert (not (= #x00000000 b_ack!267)))
(assert (not (= #x00000001 b_ack!267)))
(assert (= #x00000000 a_ack!269))
(assert (not (bvslt b_ack!267 #x00000000)))
(assert (not (= #x00000000 b_ack!267)))
(assert (not (= #x00000001 b_ack!267)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!268) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) c_ack!268)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x7feccccccccccccc
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) c_ack!268)))))

(check-sat)
(exit)
