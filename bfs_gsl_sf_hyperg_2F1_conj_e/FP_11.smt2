(declare-fun c_ack!178 () (_ BitVec 64))
(declare-fun d_ack!179 () (_ BitVec 64))
(declare-fun a_ack!180 () (_ BitVec 64))
(declare-fun b_ack!177 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) c_ack!178) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) d_ack!179))
             ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!178) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) d_ack!179))
       ((_ to_fp 11 53) #x3fd0000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!180))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (fp.lt (fp.abs ((_ to_fp 11 53) b_ack!177))
       ((_ to_fp 11 53) #x4034000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!178) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
