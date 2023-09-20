(declare-fun b_ack!465 () (_ BitVec 32))
(declare-fun a_ack!467 () (_ BitVec 32))
(declare-fun c_ack!466 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt b_ack!465 #x00000000)))
(assert (not (bvslt a_ack!467 #x00000000)))
(assert (not (= #x00000000 b_ack!465)))
(assert (not (= #x00000001 b_ack!465)))
(assert (= #x00000000 a_ack!467))
(assert (not (bvslt b_ack!465 #x00000000)))
(assert (not (= #x00000000 b_ack!465)))
(assert (not (= #x00000001 b_ack!465)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!466) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) c_ack!466)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  #x7feccccccccccccc
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) c_ack!466)))))

(check-sat)
(exit)
