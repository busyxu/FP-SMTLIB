(declare-fun a_ack!423 () (_ BitVec 32))
(declare-fun c_ack!422 () (_ BitVec 64))
(declare-fun b_ack!421 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt a_ack!423 #x00000000)))
(assert (not (= #x00000000 a_ack!423)))
(assert (not (= #x00000001 a_ack!423)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!422) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!422) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (bvslt a_ack!423 #x00000005)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!422) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) roundNearestTiesToEven a_ack!423)
       ((_ to_fp 11 53) #x416312d000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) c_ack!422) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.geq ((_ to_fp 11 53) b_ack!421) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!421) ((_ to_fp 11 53) #xc000000000000000))))
(assert (bvslt #x00000002 a_ack!423))
(assert (bvslt #x00000003 a_ack!423))
(assert (FPCHECK_FSUB_UNDERFLOW
  #x8000000000000000
  (fp.add roundNearestTiesToEven
          ((_ to_fp 11 53) #x4008000000000000)
          ((_ to_fp 11 53) b_ack!421))))

(check-sat)
(exit)
