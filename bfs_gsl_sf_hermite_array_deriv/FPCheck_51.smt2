(declare-fun b_ack!290 () (_ BitVec 32))
(declare-fun a_ack!292 () (_ BitVec 32))
(declare-fun c_ack!291 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!290 #x00000000)))
(assert (not (bvslt a_ack!292 #x00000000)))
(assert (= #x00000000 a_ack!292))
(assert (not (bvslt b_ack!290 #x00000000)))
(assert (not (= #x00000000 b_ack!290)))
(assert (not (= #x00000001 b_ack!290)))
(assert (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) c_ack!291)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  #x7feccccccccccccc
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) c_ack!291)))))

(check-sat)
(exit)
