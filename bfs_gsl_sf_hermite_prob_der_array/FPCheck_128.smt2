(declare-fun b_ack!853 () (_ BitVec 32))
(declare-fun a_ack!855 () (_ BitVec 32))
(declare-fun c_ack!854 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!853 #x00000000)))
(assert (not (bvslt a_ack!855 #x00000000)))
(assert (not (= #x00000000 b_ack!853)))
(assert (not (= #x00000001 b_ack!853)))
(assert (not (= #x00000000 a_ack!855)))
(assert (not (= #x00000001 a_ack!855)))
(assert (not (bvslt (bvsub b_ack!853 a_ack!855) #x00000000)))
(assert (not (bvslt (bvsub b_ack!853 a_ack!855) #x00000000)))
(assert (not (= #x00000000 (bvsub b_ack!853 a_ack!855))))
(assert (not (= #x00000001 (bvsub b_ack!853 a_ack!855))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!854) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!854))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (bvslt #x00000001 (bvsub b_ack!853 a_ack!855)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) c_ack!854))
       (fp.div roundNearestTiesToEven
               ((_ to_fp 11 53) #x7feccccccccccccc)
               (fp.abs ((_ to_fp 11 53) c_ack!854)))))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!854))
          ((_ to_fp 11 53) #x3cb0000000000000))
  (fp.mul roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) c_ack!854))
          ((_ to_fp 11 53) #x3cb0000000000000))))

(check-sat)
(exit)
