(declare-fun b_ack!68 () (_ BitVec 32))
(declare-fun a_ack!70 () (_ BitVec 32))
(declare-fun c_ack!69 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!68 #x00000000)))
(assert (not (bvslt a_ack!70 #x00000000)))
(assert (= #x00000000 a_ack!70))
(assert (not (bvslt b_ack!68 #x00000000)))
(assert (not (= #x00000000 b_ack!68)))
(assert (not (= #x00000001 b_ack!68)))
(assert (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) c_ack!69)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_UNDERFLOW
  #x7feccccccccccccc
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) c_ack!69)))))

(check-sat)
(exit)
