(declare-fun c_ack!302 () (_ BitVec 64))
(declare-fun a_ack!303 () (_ BitVec 32))
(declare-fun b_ack!301 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!302) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!303 #xffffffff)))
(assert (= #xffffffff a_ack!303))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!302) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) b_ack!301) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!302) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt ((_ to_fp 11 53) c_ack!302) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               ((_ to_fp 11 53) c_ack!302))
       ((_ to_fp 11 53) #x3e50000000000000)))
(assert (FPCHECK_FADD_UNDERFLOW
  #x3cb0000000000000
  (fp.abs (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) #x3ff0000000000000)
                  ((_ to_fp 11 53) c_ack!302)))))

(check-sat)
(exit)
