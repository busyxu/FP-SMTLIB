(declare-fun a_ack!308 () (_ BitVec 32))
(declare-fun b_ack!307 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvslt a_ack!308 #x00000000)))
(assert (not (= #x00000000 a_ack!308)))
(assert (not (= #x00000001 a_ack!308)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!307) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x4000000000000000)
                       ((_ to_fp 11 53) b_ack!307)))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  #x7feccccccccccccc
  (fp.abs (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) #x4000000000000000)
                  ((_ to_fp 11 53) b_ack!307)))))

(check-sat)
(exit)
